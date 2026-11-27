import * as THREE from 'three';
import { RoomEnvironment } from 'three/addons/environments/RoomEnvironment.js';
import { novaAudio } from './audio';
import { DIFFICULTY_MULT, MISSIONS, WEAPONS, WEAPON_ORDER } from './data';
import { GamepadPoller, GP_BTN, triggerGamepadRumble } from './gamepad';
import { buildMissionLevel, type BoxCollider, type LevelBuildResult } from './levels';
import { createEnemyModel, createWeaponViewModel, type EnemyModelRig } from './models';
import type {
  DifficultyId,
  EnemyKind,
  GameSettings,
  HudSnapshot,
  MissionId,
  RadarBlip,
  WeaponId,
} from './types';

// Reusable math helpers outside loop (Zero-GC render loop)
const _vec3A = new THREE.Vector3();
const _vec3B = new THREE.Vector3();
const _vec3C = new THREE.Vector3();
const _vec3D = new THREE.Vector3();
const _ndcCenter = new THREE.Vector2(0, 0);
const _raycaster = new THREE.Raycaster();

interface EnemyEntity {
  id: number;
  kind: EnemyKind;
  rig: EnemyModelRig;
  hp: number;
  maxHp: number;
  speed: number;
  damage: number;
  attackCooldown: number;
  stasisTimer: number;
  flashTimer: number;
  animPhase: number;
  strafeDir: number;
  strafeTimer: number;
}

interface ProjectileEntity {
  mesh: THREE.Mesh;
  velocity: THREE.Vector3;
  fromPlayer: boolean;
  damage: number;
  splashRadius: number;
  life: number;
  color: number;
  isPlasma?: boolean;
}

interface GrenadeEntity {
  mesh: THREE.Mesh;
  velocity: THREE.Vector3;
  fuse: number;
}

interface TracerEffect {
  line: THREE.Line;
  life: number;
}

interface ExplosionEffect {
  mesh: THREE.Mesh;
  life: number;
  maxLife: number;
}

export interface EngineCallbacks {
  onHudUpdate: (snapshot: HudSnapshot) => void;
  onStartHack: (terminalId: string, puzzleId: string) => void;
  onContextLost: (lost: boolean) => void;
  onMissionComplete: (snapshot: HudSnapshot, pistolKills: number) => void;
  onPlayerDefeat: (snapshot: HudSnapshot) => void;
  onParalyzedEnemies: (count: number) => void;
  onGrenadeTripleKill: () => void;
}

export class NovaEngine {
  private container: HTMLElement;
  private missionId: MissionId;
  private difficulty: DifficultyId;
  private settings: GameSettings;
  private callbacks: EngineCallbacks;

  private renderer: THREE.WebGLRenderer;
  private scene: THREE.Scene;
  private camera: THREE.PerspectiveCamera;
  private level: LevelBuildResult;
  private isSoftwareGl: boolean;

  private weaponHolder: THREE.Group;
  private viewModels: Partial<Record<WeaponId, ReturnType<typeof createWeaponViewModel>>> = {};
  private muzzleLight: THREE.PointLight;
  private muzzleLightTimer = 0;

  private frameId = 0;
  private disposed = false;
  private clock = new THREE.Clock();
  private hudEmitAccum = 0;

  // Player state
  private playerPos = new THREE.Vector3();
  private playerVel = new THREE.Vector3();
  private yaw = 0;
  private pitch = 0;
  private grounded = true;
  private walkBobPhase = 0;

  private health = 100;
  private maxHealth = 100;
  private shield = 100;
  private maxShield = 100;
  private shieldRegenDelay = 0;
  private suitEnergy = 100;
  private paralyzerTimer = 0;
  private doubleDamageTimer = 0;
  private grenades = 3;

  private activeWeapon: WeaponId = 'assault';
  private unlockedWeapons: WeaponId[] = ['handgun', 'assault', 'shotgun', 'sniper', 'plasma', 'rocket'];
  private magAmmo: Record<WeaponId, number>;
  private reserveAmmo: Record<WeaponId, number>;
  private plasmaPower = 60; // PLASMAGUN_MAX_POWER = 60
  private readonly maxPlasmaPower = 60;
  private plasmaRecoverDelay = 0;
  private plasmaRampTime = 0;

  private fireCooldown = 0;
  private reloadTimer = 0;
  private recoilOffset = 0;
  private isScoped = false;
  private isAds = false;
  private currentFov = 75;

  // Combat & Mission state
  private status: HudSnapshot['status'] = 'playing';
  private waveIndex = 0;
  private waveSpawnDelay = 0;
  private score = 0;
  private kills = 0;
  private pistolKills = 0;
  private headshots = 0;
  private shotsFired = 0;
  private shotsHit = 0;
  private elapsedSeconds = 0;
  private damageFlash = 0;
  private hitmarker: 'none' | 'body' | 'head' = 'none';
  private hitmarkerSeq = 0;
  private hitmarkerTimer = 0;
  private toast: string | null = null;
  private toastTimer = 0;
  private enemyIdCounter = 1;
  private activeTerminalId: string | null = null;

  private enemies: EnemyEntity[] = [];
  private projectiles: ProjectileEntity[] = [];
  private grenadesList: GrenadeEntity[] = [];
  private tracers: TracerEffect[] = [];
  private explosions: ExplosionEffect[] = [];

  // Input state
  private keys: Record<string, boolean> = {};
  private mouseDown = false;
  private dragLooking = false;
  private lastPointerX = 0;
  private lastPointerY = 0;
  private pointerLocked = false;
  private gamepadPoller = new GamepadPoller();
  private gamepadConnected = false;
  private gamepadLabel: string | null = null;
  private controllerSprint = false;
  private ltWasHeld = false;

  // Bound listeners for cleanup
  private onResizeBound: () => void;
  private onKeyDownBound: (e: KeyboardEvent) => void;
  private onKeyUpBound: (e: KeyboardEvent) => void;
  private onMouseDownBound: (e: MouseEvent) => void;
  private onMouseUpBound: (e: MouseEvent) => void;
  private onMouseMoveBound: (e: MouseEvent) => void;
  private onWheelBound: (e: WheelEvent) => void;
  private onContextMenuBound: (e: MouseEvent) => void;
  private onPointerLockChangeBound: () => void;
  private onContextLostBound: (e: Event) => void;
  private onContextRestoredBound: () => void;
  private onGamepadChangeBound: () => void;

  constructor(
    container: HTMLElement,
    missionId: MissionId,
    difficulty: DifficultyId,
    settings: GameSettings,
    callbacks: EngineCallbacks,
  ) {
    this.container = container;
    this.missionId = missionId;
    this.difficulty = difficulty;
    this.settings = { ...settings };
    this.callbacks = callbacks;
    this.currentFov = settings.fov;

    // Exact initial mag and reserve counts from weapon_*_config.xml
    this.magAmmo = {
      handgun: WEAPONS.handgun.magSize, // 8
      assault: WEAPONS.assault.magSize, // 40
      shotgun: WEAPONS.shotgun.magSize, // 8
      sniper: WEAPONS.sniper.magSize, // 1
      plasma: WEAPONS.plasma.magSize, // 60 (energy pool)
      rocket: WEAPONS.rocket.magSize, // 1
    };
    this.reserveAmmo = {
      handgun: 999, // HANDGUN_INITIAL_AMO = -1 (infinite)
      assault: WEAPONS.assault.initialAmmo - WEAPONS.assault.magSize, // 260 reserve + 40 in clip = 300
      shotgun: WEAPONS.shotgun.initialAmmo - WEAPONS.shotgun.magSize, // 40 reserve + 8 in clip = 48
      sniper: WEAPONS.sniper.initialAmmo - WEAPONS.sniper.magSize, // 9 reserve + 1 in clip = 10
      plasma: 60,
      rocket: WEAPONS.rocket.initialAmmo - WEAPONS.rocket.magSize, // 1 reserve + 1 in clip = 2
    };

    // Detect software WebGL (SwiftShader / llvmpipe / WARP)
    this.isSoftwareGl = (() => {
      const probe = document.createElement('canvas').getContext('webgl2');
      if (!probe) return true;
      const ext = probe.getExtension('WEBGL_debug_renderer_info');
      const param = ext ? ext.UNMASKED_RENDERER_WEBGL : probe.RENDERER;
      const gpu = String(probe.getParameter(param));
      probe.getExtension('WEBGL_lose_context')?.loseContext();
      return /SwiftShader|llvmpipe|softpipe|Software|Basic Render/i.test(gpu);
    })();

    this.renderer = new THREE.WebGLRenderer({
      antialias: !this.isSoftwareGl,
      powerPreference: 'high-performance',
    });
    this.renderer.outputColorSpace = THREE.SRGBColorSpace;
    this.renderer.toneMapping = THREE.ACESFilmicToneMapping;
    this.renderer.toneMappingExposure = 1.1;
    this.renderer.setPixelRatio(
      this.isSoftwareGl ? 1 : Math.min(window.devicePixelRatio, 2),
    );
    this.renderer.setSize(
      container.clientWidth || window.innerWidth,
      container.clientHeight || window.innerHeight,
    );
    this.renderer.shadowMap.enabled = !this.isSoftwareGl;
    this.renderer.shadowMap.type = THREE.PCFSoftShadowMap;
    this.renderer.domElement.style.display = 'block';
    this.renderer.domElement.style.width = '100%';
    this.renderer.domElement.style.height = '100%';

    container.appendChild(this.renderer.domElement);

    this.scene = new THREE.Scene();
    const pmrem = new THREE.PMREMGenerator(this.renderer);
    const roomEnv = new RoomEnvironment();
    const envTarget = pmrem.fromScene(roomEnv, 0.04);
    this.scene.environment = envTarget.texture;
    roomEnv.dispose();
    pmrem.dispose();

    this.camera = new THREE.PerspectiveCamera(
      settings.fov,
      (container.clientWidth || window.innerWidth) /
        Math.max(1, container.clientHeight || window.innerHeight),
      0.1,
      200,
    );
    this.camera.rotation.order = 'YXZ';
    this.scene.add(this.camera);

    this.weaponHolder = new THREE.Group();
    this.weaponHolder.position.set(0.24, -0.22, -0.38);
    this.camera.add(this.weaponHolder);

    this.muzzleLight = new THREE.PointLight(0x38bdf8, 0, 8, 2);
    this.muzzleLight.position.set(0.18, -0.1, -0.95);
    this.camera.add(this.muzzleLight);

    for (const id of WEAPON_ORDER) {
      const vm = createWeaponViewModel(id);
      vm.group.visible = id === this.activeWeapon;
      this.weaponHolder.add(vm.group);
      this.viewModels[id] = vm;
    }

    const maxAniso = this.renderer.capabilities.getMaxAnisotropy();
    this.level = buildMissionLevel(this.scene, missionId, maxAniso, this.isSoftwareGl);
    this.playerPos.copy(this.level.playerSpawn);
    this.camera.position.set(this.playerPos.x, 1.7, this.playerPos.z);

    if (!this.isSoftwareGl) {
      this.renderer.compile(this.scene, this.camera);
    }

    novaAudio.startMissionMusic(missionId);
    if (missionId === 'ship_l1' || missionId === 'ship_l2') {
      novaAudio.playBaseAiGreeting();
    }

    this.spawnWave(0);
    this.showToast(`${this.getMissionSpec().title}`);

    this.onResizeBound = () => this.handleResize();
    this.onKeyDownBound = (e) => this.handleKeyDown(e);
    this.onKeyUpBound = (e) => this.handleKeyUp(e);
    this.onMouseDownBound = (e) => this.handleMouseDown(e);
    this.onMouseUpBound = (e) => this.handleMouseUp(e);
    this.onMouseMoveBound = (e) => this.handleMouseMove(e);
    this.onWheelBound = (e) => this.handleWheel(e);
    this.onContextMenuBound = (e) => e.preventDefault();
    this.onPointerLockChangeBound = () => {
      this.pointerLocked = document.pointerLockElement === this.renderer.domElement;
      this.emitHud();
    };
    this.onContextLostBound = (e) => {
      e.preventDefault();
      this.callbacks.onContextLost(true);
    };
    this.onContextRestoredBound = () => {
      this.callbacks.onContextLost(false);
    };
    this.onGamepadChangeBound = () => {
      const gp = this.gamepadPoller.poll(this.settings.controllerDeadzone);
      this.gamepadConnected = gp.connected;
      this.gamepadLabel = gp.label;
      if (gp.connected) {
        this.showToast(`Controller Connected: ${gp.label ?? 'Gamepad'}`);
      }
      this.emitHud();
    };

    window.addEventListener('resize', this.onResizeBound);
    window.addEventListener('keydown', this.onKeyDownBound);
    window.addEventListener('keyup', this.onKeyUpBound);
    this.renderer.domElement.addEventListener('mousedown', this.onMouseDownBound);
    window.addEventListener('mouseup', this.onMouseUpBound);
    window.addEventListener('mousemove', this.onMouseMoveBound);
    this.renderer.domElement.addEventListener('wheel', this.onWheelBound, { passive: true });
    this.renderer.domElement.addEventListener('contextmenu', this.onContextMenuBound);
    document.addEventListener('pointerlockchange', this.onPointerLockChangeBound);
    this.renderer.domElement.addEventListener('webglcontextlost', this.onContextLostBound);
    this.renderer.domElement.addEventListener('webglcontextrestored', this.onContextRestoredBound);
    window.addEventListener('gamepadconnected', this.onGamepadChangeBound);
    window.addEventListener('gamepaddisconnected', this.onGamepadChangeBound);

    const initialGp = this.gamepadPoller.poll(this.settings.controllerDeadzone);
    this.gamepadConnected = initialGp.connected;
    this.gamepadLabel = initialGp.label;

    this.emitHud();
    this.clock.start();
    this.tick();
  }

  private getMissionSpec() {
    return MISSIONS.find((m) => m.id === this.missionId) ?? MISSIONS[0];
  }

  public requestPointerLock(): void {
    if (this.status !== 'playing') return;
    try {
      this.renderer.domElement.requestPointerLock();
    } catch {
      // Fallback drag aim remains active
    }
  }

  public releasePointerLock(): void {
    if (document.pointerLockElement === this.renderer.domElement) {
      document.exitPointerLock();
    }
  }

  public updateSettings(next: GameSettings): void {
    this.settings = { ...next };
    novaAudio.setVolume(next.masterVolume);
  }

  public setPaused(paused: boolean): void {
    if (this.status === 'victory' || this.status === 'defeat') return;
    this.status = paused ? 'paused' : 'playing';
    this.mouseDown = false;
    this.keys = {};
    this.gamepadPoller.resetEdges();
    if (paused) {
      this.isScoped = false;
      this.isAds = false;
      this.ltWasHeld = false;
      this.releasePointerLock();
      novaAudio.playMenuBack();
    } else {
      novaAudio.playMenuSelect();
    }
    this.emitHud();
  }

  public completeHack(success: boolean): void {
    if (this.status !== 'hacking') return;
    this.status = 'playing';
    this.gamepadPoller.resetEdges();
    if (success && this.activeTerminalId) {
      const term = this.level.terminals.find((t) => t.id === this.activeTerminalId);
      if (term) {
        term.hacked = true;
      }
      this.health = Math.min(this.maxHealth, this.health + 40);
      this.shield = this.maxShield;
      this.doubleDamageTimer = 15;
      for (const w of WEAPON_ORDER) {
        if (!WEAPONS[w].infiniteReserve && !WEAPONS[w].isEnergyPool) {
          this.reserveAmmo[w] = WEAPONS[w].maxReserve;
        }
      }
      this.plasmaPower = this.maxPlasmaPower;
      this.score += 350;
      novaAudio.playPickup('damage');
      triggerGamepadRumble(0.4, 0.5, 180);
      this.showToast('Hacking successful!');
    } else {
      this.showToast('Hacking failed!');
    }
    this.activeTerminalId = null;
    this.emitHud();
  }

  public selectWeapon(id: WeaponId): void {
    if (this.activeWeapon === id) return;
    this.activeWeapon = id;
    this.reloadTimer = 0;
    this.isScoped = false;
    this.isAds = false;
    for (const w of WEAPON_ORDER) {
      const vm = this.viewModels[w];
      if (vm) vm.group.visible = w === id;
    }
    novaAudio.playWeaponSwitch();
    this.emitHud();
  }

  private cycleWeapon(delta: -1 | 1): void {
    const idx = WEAPON_ORDER.indexOf(this.activeWeapon);
    const next = (idx + delta + WEAPON_ORDER.length) % WEAPON_ORDER.length;
    this.selectWeapon(WEAPON_ORDER[next]);
  }

  private showToast(msg: string): void {
    this.toast = msg;
    this.toastTimer = 2.8;
  }

  private spawnWave(idx: number): void {
    const mission = this.getMissionSpec();
    const wave = mission.waves[idx];
    if (!wave) return;

    this.waveIndex = idx;
    const diff = DIFFICULTY_MULT[this.difficulty];
    let spawnCursor = 0;
    let announcedKind: EnemyKind | null = null;

    for (const group of wave.spawns) {
      if (!announcedKind) announcedKind = group.kind;
      for (let i = 0; i < group.count; i++) {
        const pt = this.level.spawnPoints[spawnCursor % this.level.spawnPoints.length];
        spawnCursor++;
        const jitterX = (Math.random() - 0.5) * 3.5;
        const jitterZ = (Math.random() - 0.5) * 3.5;
        this.spawnEnemy(group.kind, pt.x + jitterX, pt.z + jitterZ, diff.enemyHp, diff.enemyDmg);
      }
    }
    if (announcedKind) {
      novaAudio.playEnemyDetect(announcedKind);
    }
    this.showToast(wave.label);
  }

  private spawnEnemy(
    kind: EnemyKind,
    x: number,
    z: number,
    hpMult: number,
    dmgMult: number,
  ): void {
    const rig = createEnemyModel(kind);
    rig.group.position.set(x, 0, z);
    this.scene.add(rig.group);

    const baseHp =
      kind === 'daemon' ? 420 : kind === 'fiend' ? 175 : kind === 'imp' ? 80 : 120;
    const speed =
      kind === 'imp' ? 6.8 : kind === 'fiend' ? 5.6 : kind === 'daemon' ? 3.2 : 4.2;
    const damage =
      (kind === 'daemon' ? 24 : kind === 'fiend' ? 18 : kind === 'imp' ? 11 : 14) * dmgMult;

    const enemy: EnemyEntity = {
      id: this.enemyIdCounter++,
      kind,
      rig,
      hp: Math.round(baseHp * hpMult),
      maxHp: Math.round(baseHp * hpMult),
      speed,
      damage,
      attackCooldown: 0.6 + Math.random() * 1.1,
      stasisTimer: 0,
      flashTimer: 0,
      animPhase: Math.random() * Math.PI * 2,
      strafeDir: Math.random() > 0.5 ? 1 : -1,
      strafeTimer: 1.5 + Math.random() * 2,
    };
    rig.group.userData.enemyId = enemy.id;
    for (const mesh of rig.hitMeshes) {
      mesh.userData.enemyId = enemy.id;
    }
    this.enemies.push(enemy);
  }

  private handleResize(): void {
    if (this.disposed) return;
    const w = this.container.clientWidth || window.innerWidth;
    const h = Math.max(1, this.container.clientHeight || window.innerHeight);
    this.camera.aspect = w / h;
    this.camera.updateProjectionMatrix();
    this.renderer.setSize(w, h);
  }

  private handleKeyDown(e: KeyboardEvent): void {
    this.keys[e.code] = true;

    if (e.code === 'Escape' || e.code === 'KeyP') {
      if (this.status === 'playing') {
        this.setPaused(true);
      } else if (this.status === 'paused') {
        this.setPaused(false);
      }
      return;
    }

    if (this.status !== 'playing') return;

    if (e.code === 'Digit1') this.selectWeapon('handgun');
    else if (e.code === 'Digit2') this.selectWeapon('assault');
    else if (e.code === 'Digit3') this.selectWeapon('shotgun');
    else if (e.code === 'Digit4') this.selectWeapon('sniper');
    else if (e.code === 'Digit5') this.selectWeapon('plasma');
    else if (e.code === 'Digit6') this.selectWeapon('rocket');
    else if (e.code === 'KeyR') this.startReload();
    else if (e.code === 'KeyG') this.throwGrenade();
    else if (e.code === 'KeyQ') this.activateParalyzer();
    else if (e.code === 'KeyE') this.tryHackNearestTerminal();
    else if (e.code === 'Space' && this.grounded) {
      this.playerVel.y = 7.4;
      this.grounded = false;
      novaAudio.playJump();
    }
  }

  private handleKeyUp(e: KeyboardEvent): void {
    this.keys[e.code] = false;
  }

  private handleMouseDown(e: MouseEvent): void {
    if (this.status !== 'playing') return;

    if (e.button === 2) {
      if (this.activeWeapon === 'sniper') {
        this.isScoped = !this.isScoped;
        novaAudio.playSniperZoom();
        this.emitHud();
      }
      return;
    }

    if (e.button === 0) {
      if (!this.pointerLocked) {
        this.requestPointerLock();
        this.dragLooking = true;
        this.lastPointerX = e.clientX;
        this.lastPointerY = e.clientY;
      }
      this.mouseDown = true;
      this.tryFire();
    }
  }

  private handleMouseUp(e: MouseEvent): void {
    if (e.button === 0) {
      this.mouseDown = false;
      this.dragLooking = false;
    }
  }

  private handleMouseMove(e: MouseEvent): void {
    if (this.status !== 'playing') return;
    const sens = 0.0022 * this.settings.sensitivity * (this.isScoped ? 0.42 : 1);
    const ySign = this.settings.invertY ? 1 : -1;

    if (this.pointerLocked) {
      this.yaw -= e.movementX * sens;
      this.pitch += e.movementY * sens * ySign;
      this.pitch = THREE.MathUtils.clamp(this.pitch, -1.42, 1.42);
    } else if (this.dragLooking) {
      const dx = e.clientX - this.lastPointerX;
      const dy = e.clientY - this.lastPointerY;
      this.lastPointerX = e.clientX;
      this.lastPointerY = e.clientY;
      this.yaw -= dx * sens * 1.4;
      this.pitch += dy * sens * 1.4 * ySign;
      this.pitch = THREE.MathUtils.clamp(this.pitch, -1.42, 1.42);
    }
  }

  private handleWheel(e: WheelEvent): void {
    if (this.status !== 'playing') return;
    const idx = WEAPON_ORDER.indexOf(this.activeWeapon);
    const next = (idx + (e.deltaY > 0 ? 1 : -1) + WEAPON_ORDER.length) % WEAPON_ORDER.length;
    this.selectWeapon(WEAPON_ORDER[next]);
  }

  private startReload(): void {
    const spec = WEAPONS[this.activeWeapon];
    if (spec.isEnergyPool) return; // Plasma gun recharges passively
    if (this.reloadTimer > 0) return;
    if (this.magAmmo[this.activeWeapon] >= spec.magSize) return;
    if (!spec.infiniteReserve && this.reserveAmmo[this.activeWeapon] <= 0) return;

    const useShort =
      spec.shortReloadMs && this.magAmmo[this.activeWeapon] > 0;
    this.reloadTimer = (useShort ? spec.shortReloadMs! : spec.reloadMs) / 1000;
    this.isScoped = false;
    novaAudio.playReload(this.activeWeapon);
    this.emitHud();
  }

  private finishReload(): void {
    const spec = WEAPONS[this.activeWeapon];
    const current = this.magAmmo[this.activeWeapon];
    const needed = spec.magSize - current;
    if (spec.infiniteReserve) {
      this.magAmmo[this.activeWeapon] = spec.magSize;
    } else {
      const avail = this.reserveAmmo[this.activeWeapon];
      const load = Math.min(needed, avail);
      this.magAmmo[this.activeWeapon] = current + load;
      this.reserveAmmo[this.activeWeapon] = avail - load;
    }
  }

  private activateParalyzer(): void {
    if (this.suitEnergy < 50 || this.paralyzerTimer > 0) return;
    this.suitEnergy = Math.max(0, this.suitEnergy - 60);
    this.paralyzerTimer = 4.5;
    novaAudio.playParalyzer();

    let count = 0;
    for (const enemy of this.enemies) {
      const dist = enemy.rig.group.position.distanceTo(this.playerPos);
      if (dist <= 22) {
        enemy.stasisTimer = 4.5;
        count++;
      }
    }
    if (count > 0) {
      this.callbacks.onParalyzedEnemies(count);
    }
    this.showToast(`Paralyzer: ${count} Hostiles Frozen`);
    this.emitHud();
  }

  private throwGrenade(): void {
    if (this.grenades <= 0) return;
    this.grenades--;

    const mesh = new THREE.Mesh(
      new THREE.SphereGeometry(0.14, 10, 10),
      new THREE.MeshStandardMaterial({
        color: 0x334155,
        emissive: 0xf59e0b,
        emissiveIntensity: 0.9,
        roughness: 0.3,
        metalness: 0.8,
      }),
    );
    _vec3A.set(0, 0, -1).applyEuler(this.camera.rotation).normalize();
    mesh.position.copy(this.camera.position).addScaledVector(_vec3A, 0.7);
    this.scene.add(mesh);

    const vel = _vec3A.clone().multiplyScalar(17);
    vel.y += 4.8;

    this.grenadesList.push({
      mesh,
      velocity: vel,
      fuse: 1.5,
    });
    novaAudio.playMenuSelect();
    this.emitHud();
  }

  private tryHackNearestTerminal(): void {
    const term = this.getNearestUnhackedTerminal();
    if (!term) return;
    this.activeTerminalId = term.id;
    this.status = 'hacking';
    this.mouseDown = false;
    this.keys = {};
    this.releasePointerLock();
    novaAudio.playConsoleActivate();
    this.callbacks.onStartHack(term.id, term.puzzleId);
    this.emitHud();
  }

  private getNearestUnhackedTerminal() {
    let best = null as LevelBuildResult['terminals'][number] | null;
    let bestDist = 3.6;
    for (const t of this.level.terminals) {
      if (t.hacked) continue;
      const d = t.position.distanceTo(this.playerPos);
      if (d < bestDist) {
        bestDist = d;
        best = t;
      }
    }
    return best;
  }

  private tryFire(): void {
    if (this.status !== 'playing') return;
    if (this.fireCooldown > 0 || this.reloadTimer > 0) return;

    const spec = WEAPONS[this.activeWeapon];

    if (spec.isEnergyPool) {
      // PLASMAGUN_POWER_DECREASE_RATE = 60 (~10 power per bolt at 165ms cadence)
      if (this.plasmaPower < 10) return;
      this.plasmaPower = Math.max(0, this.plasmaPower - 10);
      this.plasmaRecoverDelay = spec.reloadMs / 1000; // 1.0s
      this.plasmaRampTime = Math.min(1.5, this.plasmaRampTime + 0.165);
    } else {
      if (this.magAmmo[this.activeWeapon] <= 0) {
        this.startReload();
        return;
      }
      this.magAmmo[this.activeWeapon]--;
    }

    this.fireCooldown = spec.fireRateMs / 1000;
    this.recoilOffset = Math.min(0.16, this.recoilOffset + spec.recoil);
    this.pitch = Math.min(1.42, this.pitch + spec.recoil * 0.25);

    this.muzzleLight.color.set(spec.color);
    this.muzzleLight.intensity = 4.5;
    this.muzzleLightTimer = 0.06;
    novaAudio.playWeaponFire(this.activeWeapon);
    if (this.gamepadConnected) {
      const kick = Math.min(0.85, 0.16 + spec.recoil * 5.2);
      triggerGamepadRumble(kick * 0.55, kick, this.activeWeapon === 'rocket' || this.activeWeapon === 'shotgun' ? 140 : 65);
    }

    const dmgMult = this.doubleDamageTimer > 0 ? 2 : 1;
    this.shotsFired++;

    if (spec.projectileSpeed) {
      _vec3A.set(0, 0, -1).applyEuler(this.camera.rotation).normalize();
      const startPos = this.camera.position.clone().addScaledVector(_vec3A, 0.85);
      const colorHex = this.activeWeapon === 'plasma' ? 0x34d399 : 0xef4444;
      const projMesh = new THREE.Mesh(
        new THREE.SphereGeometry(this.activeWeapon === 'rocket' ? 0.16 : 0.11, 10, 10),
        new THREE.MeshBasicMaterial({ color: colorHex }),
      );
      projMesh.position.copy(startPos);
      this.scene.add(projMesh);

      const baseDamage =
        this.activeWeapon === 'plasma'
          ? spec.damage + this.plasmaRampTime * 70 // PLASMAGUN_DAMAGE_INCREASE_RATE = 70
          : spec.damage;

      this.projectiles.push({
        mesh: projMesh,
        velocity: _vec3A.clone().multiplyScalar(spec.projectileSpeed),
        fromPlayer: true,
        damage: baseDamage * dmgMult,
        splashRadius: spec.splashRadius ?? 2,
        life: spec.maxRange / spec.projectileSpeed,
        color: colorHex,
        isPlasma: this.activeWeapon === 'plasma',
      });
    } else {
      const enemyMeshes: THREE.Object3D[] = [];
      for (const e of this.enemies) {
        enemyMeshes.push(...e.rig.hitMeshes);
      }

      const muzzleWorld = _vec3C;
      const vm = this.viewModels[this.activeWeapon];
      if (vm) {
        vm.muzzlePoint.getWorldPosition(muzzleWorld);
      } else {
        muzzleWorld.copy(this.camera.position);
      }

      let anyHit = false;
      let anyHeadshot = false;
      let hitKind: EnemyKind = 'grunt';

      for (let p = 0; p < spec.pellets; p++) {
        _raycaster.setFromCamera(_ndcCenter, this.camera);
        _raycaster.far = spec.maxRange;
        if (spec.spread > 0) {
          const spreadScale = this.isScoped ? 0.1 : this.isAds ? 0.55 : 1;
          _raycaster.ray.direction.x += (Math.random() - 0.5) * spec.spread * spreadScale;
          _raycaster.ray.direction.y += (Math.random() - 0.5) * spec.spread * spreadScale;
          _raycaster.ray.direction.z += (Math.random() - 0.5) * spec.spread * spreadScale;
          _raycaster.ray.direction.normalize();
        }

        const hits = _raycaster.intersectObjects(enemyMeshes, false);
        let hitDist = Math.min(75, spec.maxRange);
        if (hits.length > 0) {
          const hit = hits[0];
          hitDist = hit.distance;
          const enemyId = hit.object.userData.enemyId as number | undefined;
          const enemy = this.enemies.find((e) => e.id === enemyId);
          if (enemy) {
            const relY = hit.point.y - enemy.rig.group.position.y;
            const headThreshold = enemy.rig.height * (enemy.kind === 'fiend' ? 0.65 : 0.74);
            const isHead = relY >= headThreshold;
            anyHit = true;
            hitKind = enemy.kind;
            if (isHead) anyHeadshot = true;
            const baseDmg =
              spec.farDamage !== undefined &&
              spec.closeRange !== undefined &&
              hitDist > spec.closeRange
                ? spec.farDamage
                : spec.damage;
            const finalDmg = baseDmg * dmgMult * (isHead ? 2.0 : 1.0);
            this.damageEnemy(enemy, finalDmg, isHead);
          }
        }

        const endPt = _vec3B
          .copy(_raycaster.ray.origin)
          .addScaledVector(_raycaster.ray.direction, hitDist);
        this.spawnTracer(muzzleWorld, endPt, spec.color);
      }

      if (anyHit) {
        this.shotsHit++;
        this.hitmarker = anyHeadshot ? 'head' : 'body';
        this.hitmarkerSeq++;
        this.hitmarkerTimer = 0.22;
        novaAudio.playEnemyHit(hitKind, anyHeadshot);
      }
    }

    if (!spec.isEnergyPool && this.magAmmo[this.activeWeapon] === 0) {
      this.startReload();
    }
  }

  private spawnTracer(start: THREE.Vector3, end: THREE.Vector3, colorHex: string): void {
    const geo = new THREE.BufferGeometry().setFromPoints([start.clone(), end.clone()]);
    const mat = new THREE.LineBasicMaterial({
      color: colorHex,
      transparent: true,
      opacity: 0.78,
    });
    const line = new THREE.Line(geo, mat);
    this.scene.add(line);
    this.tracers.push({ line, life: 0.07 });
  }

  private spawnExplosion(pos: THREE.Vector3, radius: number, colorHex: number, isPlasma = false): void {
    const mesh = new THREE.Mesh(
      new THREE.SphereGeometry(radius * 0.45, 14, 14),
      new THREE.MeshBasicMaterial({
        color: colorHex,
        transparent: true,
        opacity: 0.75,
      }),
    );
    mesh.position.copy(pos);
    this.scene.add(mesh);
    this.explosions.push({ mesh, life: 0.28, maxLife: 0.28 });
    if (isPlasma) novaAudio.playPlasmaImpact();
    else {
      novaAudio.playExplosion();
      if (this.gamepadConnected) triggerGamepadRumble(0.55, 0.85, 210);
    }
  }

  private applySplashDamage(
    center: THREE.Vector3,
    radius: number,
    maxDmg: number,
    isGrenade = false,
  ): void {
    let hitAny = false;
    let killsFromBlast = 0;
    for (let i = this.enemies.length - 1; i >= 0; i--) {
      const e = this.enemies[i];
      _vec3D.copy(e.rig.group.position);
      _vec3D.y += e.rig.height * 0.5;
      const dist = _vec3D.distanceTo(center);
      if (dist <= radius) {
        const falloff = 1 - (dist / radius) * 0.55;
        const died = this.damageEnemy(e, maxDmg * falloff, false);
        if (died) killsFromBlast++;
        hitAny = true;
      }
    }
    if (isGrenade && killsFromBlast >= 3) {
      this.callbacks.onGrenadeTripleKill();
    }
    if (hitAny) {
      this.shotsHit++;
      this.hitmarker = 'body';
      this.hitmarkerSeq++;
      this.hitmarkerTimer = 0.22;
    }
  }

  private damageEnemy(enemy: EnemyEntity, dmg: number, isHeadshot: boolean): boolean {
    enemy.hp -= dmg;
    enemy.flashTimer = 0.1;
    enemy.rig.bodyMat.emissive.setHex(0xffffff);
    enemy.rig.bodyMat.emissiveIntensity = 0.7;

    if (enemy.hp <= 0) {
      this.killEnemy(enemy, isHeadshot);
      return true;
    }
    return false;
  }

  private killEnemy(enemy: EnemyEntity, isHeadshot: boolean): void {
    const idx = this.enemies.indexOf(enemy);
    if (idx === -1) return;
    this.enemies.splice(idx, 1);

    this.scene.remove(enemy.rig.group);
    novaAudio.playEnemyDeath(enemy.kind);

    const basePts =
      enemy.kind === 'daemon' ? 400 : enemy.kind === 'fiend' ? 180 : enemy.kind === 'imp' ? 120 : 100;
    const mult = DIFFICULTY_MULT[this.difficulty].scoreMult;
    this.score += Math.round((basePts + (isHeadshot ? 60 : 0)) * mult);
    this.kills++;
    if (this.activeWeapon === 'handgun') this.pistolKills++;
    if (isHeadshot) {
      this.headshots++;
      this.showToast('Headshot!');
    }

    if (this.enemies.length === 0) {
      const mission = this.getMissionSpec();
      if (this.waveIndex + 1 < mission.waves.length) {
        this.waveSpawnDelay = 2.0;
      } else {
        this.status = 'victory';
        this.releasePointerLock();
        novaAudio.playLevelCleared();
        this.emitHud();
        this.callbacks.onMissionComplete(this.buildSnapshot(), this.pistolKills);
      }
    }
  }

  private damagePlayer(amount: number): void {
    if (this.status !== 'playing') return;
    this.shieldRegenDelay = 3.2;
    this.damageFlash = 0.85;
    novaAudio.playPlayerHurt();
    if (this.gamepadConnected) {
      triggerGamepadRumble(0.45, 0.75, 160);
    }

    if (this.shield > 0) {
      const absorbed = Math.min(this.shield, amount);
      this.shield -= absorbed;
      const rem = amount - absorbed;
      if (rem > 0) this.health = Math.max(0, this.health - rem);
    } else {
      this.health = Math.max(0, this.health - amount);
    }

    if (this.health <= 0) {
      this.status = 'defeat';
      this.releasePointerLock();
      novaAudio.stopMusic();
      this.emitHud();
      this.callbacks.onPlayerDefeat(this.buildSnapshot());
    }
  }

  private resolveHorizontalCollisions(pos: THREE.Vector3, radius: number): void {
    pos.x = THREE.MathUtils.clamp(pos.x, -this.level.boundsRadius, this.level.boundsRadius);
    pos.z = THREE.MathUtils.clamp(pos.z, -this.level.boundsRadius, this.level.boundsRadius);

    for (const c of this.level.colliders) {
      if (pos.y > c.maxY || pos.y + 1.7 < c.minY) continue;
      const closestX = THREE.MathUtils.clamp(pos.x, c.minX, c.maxX);
      const closestZ = THREE.MathUtils.clamp(pos.z, c.minZ, c.maxZ);
      const dx = pos.x - closestX;
      const dz = pos.z - closestZ;
      const distSq = dx * dx + dz * dz;
      if (distSq < radius * radius) {
        const dist = Math.sqrt(distSq);
        if (dist > 0.0001) {
          const push = radius - dist;
          pos.x += (dx / dist) * push;
          pos.z += (dz / dist) * push;
        } else {
          pos.z += radius;
        }
      }
    }
  }

  private pointHitsCollider(pt: THREE.Vector3): BoxCollider | null {
    for (const c of this.level.colliders) {
      if (
        pt.x >= c.minX &&
        pt.x <= c.maxX &&
        pt.y >= c.minY &&
        pt.y <= c.maxY &&
        pt.z >= c.minZ &&
        pt.z <= c.maxZ
      ) {
        return c;
      }
    }
    return null;
  }

  private tick = (): void => {
    if (this.disposed) return;

    const rawDt = this.clock.getDelta();
    const dt = Math.min(rawDt, 0.05);

    if (this.status === 'playing') {
      this.updateSimulation(dt);
    }

    this.renderer.render(this.scene, this.camera);

    if (this.isSoftwareGl) {
      this.afterDraw(this.tick);
    } else {
      this.frameId = requestAnimationFrame(this.tick);
    }
  };

  private afterDraw(cb: () => void): void {
    const gl = this.renderer.getContext() as WebGL2RenderingContext;
    const sync = gl.fenceSync(gl.SYNC_GPU_COMMANDS_COMPLETE, 0);
    gl.flush();
    const poll = () => {
      if (this.disposed) {
        if (sync) gl.deleteSync(sync);
        return;
      }
      const state = sync && gl.getSyncParameter(sync, gl.SYNC_STATUS);
      if (state === gl.UNSIGNALED) {
        this.frameId = window.setTimeout(poll, 5);
      } else {
        if (sync) gl.deleteSync(sync);
        this.frameId = window.setTimeout(cb, 80);
      }
    };
    this.frameId = window.setTimeout(poll, 5);
  }

  private getControllerAimFriction(): number {
    // Gentle aim slowdown when controller reticle sweeps close to a hostile
    _vec3C.set(0, 0, -1).applyEuler(this.camera.rotation).normalize();
    let bestDot = 0.985; // ~10 deg cone
    for (const e of this.enemies) {
      _vec3D.set(
        e.rig.group.position.x - this.camera.position.x,
        e.rig.group.position.y + e.rig.height * 0.55 - this.camera.position.y,
        e.rig.group.position.z - this.camera.position.z,
      );
      const dist = _vec3D.length();
      if (dist < 0.5 || dist > 65) continue;
      _vec3D.divideScalar(dist);
      const dot = _vec3C.dot(_vec3D);
      if (dot > bestDot) bestDot = dot;
    }
    return bestDot > 0.992 ? 0.6 : 1.0;
  }

  private updateSimulation(dt: number): void {
    this.elapsedSeconds += dt;

    const gp = this.gamepadPoller.poll(this.settings.controllerDeadzone);
    if (gp.connected !== this.gamepadConnected || gp.label !== this.gamepadLabel) {
      this.gamepadConnected = gp.connected;
      this.gamepadLabel = gp.label;
    }

    if (gp.connected) {
      if (gp.justPressed[GP_BTN.START]) {
        this.setPaused(true);
        return;
      }

      if (gp.justPressed[GP_BTN.LB] || gp.justPressed[GP_BTN.LEFT]) {
        this.cycleWeapon(-1);
      } else if (gp.justPressed[GP_BTN.RB] || gp.justPressed[GP_BTN.RIGHT]) {
        this.cycleWeapon(1);
      }

      if (gp.justPressed[GP_BTN.A] && this.grounded) {
        this.playerVel.y = 7.4;
        this.grounded = false;
        novaAudio.playJump();
      }
      if (gp.justPressed[GP_BTN.B] || gp.justPressed[GP_BTN.UP]) {
        this.activateParalyzer();
      }
      if (gp.justPressed[GP_BTN.Y] || gp.justPressed[GP_BTN.DOWN]) {
        this.throwGrenade();
      }
      if (gp.justPressed[GP_BTN.X]) {
        if (this.getNearestUnhackedTerminal()) {
          this.tryHackNearestTerminal();
          return;
        }
        this.startReload();
      }
      if (gp.justPressed[GP_BTN.R3]) {
        if (this.activeWeapon === 'sniper') {
          this.isScoped = !this.isScoped;
          novaAudio.playSniperZoom();
        } else {
          this.startReload();
        }
      }
      if (gp.justPressed[GP_BTN.L3]) {
        this.controllerSprint = !this.controllerSprint;
      }
      if (Math.hypot(gp.moveX, gp.moveY) < 0.2) {
        this.controllerSprint = false;
      }

      // LT: Sniper scope while held, or ADS aim-focus on any other weapon (N.O.V.A. Legacy feel)
      if (gp.ltHeld !== this.ltWasHeld) {
        this.ltWasHeld = gp.ltHeld;
        if (this.activeWeapon === 'sniper') {
          this.isScoped = gp.ltHeld;
          novaAudio.playSniperZoom();
        } else {
          this.isAds = gp.ltHeld;
        }
      }

      // Right-stick precision aiming with radial curve, ADS slowdown & aim-assist friction
      if (gp.lookX !== 0 || gp.lookY !== 0) {
        const aimScale = this.isScoped ? 0.4 : this.isAds ? 0.68 : 1.0;
        const friction = this.getControllerAimFriction();
        const turnRate = 2.65 * this.settings.controllerSensitivity * aimScale * friction;
        const ySign = this.settings.invertY ? -1 : 1;
        this.yaw -= gp.lookX * turnRate * dt;
        this.pitch -= gp.lookY * turnRate * 0.78 * ySign * dt;
        this.pitch = THREE.MathUtils.clamp(this.pitch, -1.42, 1.42);
      }
    } else if (this.ltWasHeld) {
      this.ltWasHeld = false;
      this.isAds = false;
      this.controllerSprint = false;
    }

    if (this.fireCooldown > 0) this.fireCooldown -= dt;
    if (this.muzzleLightTimer > 0) {
      this.muzzleLightTimer -= dt;
      if (this.muzzleLightTimer <= 0) this.muzzleLight.intensity = 0;
    }
    if (this.hitmarkerTimer > 0) {
      this.hitmarkerTimer -= dt;
      if (this.hitmarkerTimer <= 0) this.hitmarker = 'none';
    }
    if (this.toastTimer > 0) {
      this.toastTimer -= dt;
      if (this.toastTimer <= 0) this.toast = null;
    }
    if (this.damageFlash > 0) {
      this.damageFlash = Math.max(0, this.damageFlash - dt * 2.4);
    }
    if (this.doubleDamageTimer > 0) {
      this.doubleDamageTimer = Math.max(0, this.doubleDamageTimer - dt);
    }
    if (this.paralyzerTimer > 0) {
      this.paralyzerTimer = Math.max(0, this.paralyzerTimer - dt);
    } else {
      this.suitEnergy = Math.min(100, this.suitEnergy + dt * 9);
    }
    if (this.shieldRegenDelay > 0) {
      this.shieldRegenDelay -= dt;
    } else if (this.shield < this.maxShield) {
      this.shield = Math.min(this.maxShield, this.shield + dt * 14);
    }

    // Plasma Gun power recovery (PLASMAGUN_POWER_RECOVER_RATE = 40 after 1.0s delay)
    if (this.plasmaRecoverDelay > 0) {
      this.plasmaRecoverDelay -= dt;
    } else {
      this.plasmaPower = Math.min(this.maxPlasmaPower, this.plasmaPower + dt * 40);
      this.plasmaRampTime = Math.max(0, this.plasmaRampTime - dt * 2);
    }
    this.magAmmo.plasma = Math.floor(this.plasmaPower);

    if (this.reloadTimer > 0) {
      this.reloadTimer -= dt;
      if (this.reloadTimer <= 0) {
        this.reloadTimer = 0;
        this.finishReload();
      }
    }

    const fireMode = WEAPONS[this.activeWeapon].fireMode;
    if (
      (this.mouseDown && fireMode === 'auto') ||
      (gp.connected &&
        ((fireMode === 'auto' && gp.rtHeld) ||
          (fireMode === 'semi' && gp.rtJustPressed)))
    ) {
      this.tryFire();
    }

    if (this.waveSpawnDelay > 0) {
      this.waveSpawnDelay -= dt;
      if (this.waveSpawnDelay <= 0) {
        this.spawnWave(this.waveIndex + 1);
      }
    }

    const kbForward =
      (this.keys['KeyW'] || this.keys['ArrowUp'] ? 1 : 0) -
      (this.keys['KeyS'] || this.keys['ArrowDown'] ? 1 : 0);
    const kbStrafe =
      (this.keys['KeyD'] || this.keys['ArrowRight'] ? 1 : 0) -
      (this.keys['KeyA'] || this.keys['ArrowLeft'] ? 1 : 0);

    const forward = THREE.MathUtils.clamp(kbForward - gp.moveY, -1, 1);
    const strafe = THREE.MathUtils.clamp(kbStrafe + gp.moveX, -1, 1);

    const sprinting = Boolean(
      this.keys['ShiftLeft'] ||
        this.keys['ShiftRight'] ||
        gp.held[GP_BTN.L3] ||
        this.controllerSprint,
    );
    const moveSpeed = sprinting ? 10.2 : 7.4;

    const sinY = Math.sin(this.yaw);
    const cosY = Math.cos(this.yaw);
    _vec3A.set(
      -sinY * forward + cosY * strafe,
      0,
      -cosY * forward - sinY * strafe,
    );
    const moveMag = Math.min(1, _vec3A.length());
    if (moveMag > 0.001) {
      _vec3A.normalize().multiplyScalar(moveSpeed * moveMag);
      this.walkBobPhase += dt * (sprinting ? 13 : 9.5) * moveMag;
    } else {
      _vec3A.set(0, 0, 0);
    }
    this.playerPos.x += _vec3A.x * dt;
    this.playerPos.z += _vec3A.z * dt;

    this.playerVel.y -= 20 * dt;
    this.playerPos.y += this.playerVel.y * dt;
    if (this.playerPos.y <= 0) {
      this.playerPos.y = 0;
      this.playerVel.y = 0;
      this.grounded = true;
    }

    this.resolveHorizontalCollisions(this.playerPos, 0.65);

    const bobY = this.grounded && _vec3A.lengthSq() > 0 ? Math.sin(this.walkBobPhase) * 0.045 : 0;
    this.camera.position.set(this.playerPos.x, this.playerPos.y + 1.7 + bobY, this.playerPos.z);
    this.camera.rotation.set(this.pitch, this.yaw, 0, 'YXZ');

    const targetFov = this.isScoped
      ? (WEAPONS.sniper.zoomFov ?? 36)
      : this.isAds
        ? Math.max(54, this.settings.fov - 12)
        : this.settings.fov;
    if (Math.abs(this.currentFov - targetFov) > 0.05) {
      this.currentFov = THREE.MathUtils.damp(this.currentFov, targetFov, 14, dt);
      this.camera.fov = this.currentFov;
      this.camera.updateProjectionMatrix();
    }

    this.recoilOffset = THREE.MathUtils.damp(this.recoilOffset, 0, 16, dt);
    const reloadTilt = this.reloadTimer > 0 ? -0.45 : 0;
    const adsOffsetX = this.isAds ? -0.09 : 0;
    const adsOffsetY = this.isAds ? 0.03 : 0;
    this.weaponHolder.position.set(
      0.24 + adsOffsetX + Math.cos(this.walkBobPhase * 0.5) * 0.008,
      -0.22 + adsOffsetY + Math.abs(Math.sin(this.walkBobPhase * 0.5)) * 0.008 - (this.reloadTimer > 0 ? 0.08 : 0),
      -0.38 + this.recoilOffset,
    );
    this.weaponHolder.rotation.x = reloadTilt + this.recoilOffset * 0.9;
    this.weaponHolder.visible = !this.isScoped;

    for (const pk of this.level.pickups) {
      if (!pk.active) {
        pk.respawnTimer -= dt;
        if (pk.respawnTimer <= 0) {
          pk.active = true;
          pk.mesh.visible = true;
        }
        continue;
      }
      pk.mesh.rotation.y += dt * 1.8;
      if (pk.position.distanceTo(this.playerPos) < 1.7) {
        if (pk.kind === 'health' && (this.health < this.maxHealth || this.shield < this.maxShield)) {
          this.health = Math.min(this.maxHealth, this.health + 40);
          this.shield = Math.min(this.maxShield, this.shield + 40);
          this.showToast('+40 Health');
        } else if (pk.kind === 'ammo') {
          for (const w of WEAPON_ORDER) {
            if (!WEAPONS[w].infiniteReserve && !WEAPONS[w].isEnergyPool) {
              this.reserveAmmo[w] = Math.min(
                WEAPONS[w].maxReserve,
                this.reserveAmmo[w] + Math.ceil(WEAPONS[w].magSize * 1.5),
              );
            }
          }
          this.grenades = Math.min(5, this.grenades + 1);
          this.showToast('Got Grenade & Ammo');
        } else if (pk.kind === 'damage') {
          this.doubleDamageTimer = 12;
          this.showToast('Got Increased Damage');
        } else {
          continue;
        }
        pk.active = false;
        pk.respawnTimer = 18;
        pk.mesh.visible = false;
        novaAudio.playPickup(pk.kind);
      }
    }

    for (const e of this.enemies) {
      if (e.flashTimer > 0) {
        e.flashTimer -= dt;
        if (e.flashTimer <= 0 && e.stasisTimer <= 0) {
          e.rig.bodyMat.emissive.setHex(0x000000);
          e.rig.bodyMat.emissiveIntensity = 0;
        }
      }

      if (e.stasisTimer > 0) {
        e.stasisTimer -= dt;
        e.rig.bodyMat.emissive.setHex(0x06b6d4);
        e.rig.bodyMat.emissiveIntensity = 0.55;
        if (e.stasisTimer <= 0 && e.flashTimer <= 0) {
          e.rig.bodyMat.emissive.setHex(0x000000);
          e.rig.bodyMat.emissiveIntensity = 0;
        }
        continue;
      }

      _vec3A.subVectors(this.playerPos, e.rig.group.position);
      _vec3A.y = 0;
      const dist = _vec3A.length();
      if (dist > 0.01) {
        _vec3A.divideScalar(dist);
        e.rig.group.rotation.y = Math.atan2(_vec3A.x, _vec3A.z);
      }

      e.strafeTimer -= dt;
      if (e.strafeTimer <= 0) {
        e.strafeDir *= -1;
        e.strafeTimer = 1.4 + Math.random() * 1.8;
      }

      const isMelee = e.kind === 'fiend' || e.kind === 'imp';
      const preferredDist = isMelee ? 1.8 : 11.5;

      if (dist > preferredDist) {
        e.rig.group.position.x += _vec3A.x * e.speed * dt;
        e.rig.group.position.z += _vec3A.z * e.speed * dt;
      } else if (!isMelee && dist > 3.5) {
        e.rig.group.position.x += -_vec3A.z * e.strafeDir * e.speed * 0.55 * dt;
        e.rig.group.position.z += _vec3A.x * e.strafeDir * e.speed * 0.55 * dt;
      }

      this.resolveHorizontalCollisions(e.rig.group.position, e.rig.radius);

      e.animPhase += dt * e.speed * 1.9;
      e.rig.modelRoot.position.y = Math.abs(Math.sin(e.animPhase)) * (isMelee ? 0.08 : 0.05);
      e.rig.modelRoot.rotation.z = Math.sin(e.animPhase) * 0.055;
      e.rig.modelRoot.rotation.x = isMelee ? 0.12 + Math.sin(e.animPhase * 2) * 0.05 : 0.04;

      e.attackCooldown -= dt;
      if (e.attackCooldown <= 0) {
        if (isMelee && dist <= 2.7) {
          novaAudio.playEnemyAttack(e.kind);
          this.damagePlayer(e.damage);
          e.attackCooldown = e.kind === 'imp' ? 0.9 : 1.15;
        } else if (!isMelee && dist < 38) {
          novaAudio.playEnemyAttack(e.kind);
          _vec3B.set(
            e.rig.group.position.x,
            e.rig.height * 0.65,
            e.rig.group.position.z,
          );
          _vec3C.set(this.playerPos.x, 1.35, this.playerPos.z).sub(_vec3B).normalize();
          const projColor = e.kind === 'daemon' ? 0xf59e0b : 0xef4444;
          const bolt = new THREE.Mesh(
            new THREE.SphereGeometry(e.kind === 'daemon' ? 0.22 : 0.13, 8, 8),
            new THREE.MeshBasicMaterial({ color: projColor }),
          );
          bolt.position.copy(_vec3B);
          this.scene.add(bolt);
          this.projectiles.push({
            mesh: bolt,
            velocity: _vec3C.clone().multiplyScalar(e.kind === 'daemon' ? 20 : 24),
            fromPlayer: false,
            damage: e.damage,
            splashRadius: e.kind === 'daemon' ? 2.4 : 0,
            life: 3.0,
            color: projColor,
          });
          e.attackCooldown = e.kind === 'daemon' ? 1.5 : 1.85;
        }
      }
    }

    for (let i = this.projectiles.length - 1; i >= 0; i--) {
      const p = this.projectiles[i];
      p.life -= dt;
      p.mesh.position.addScaledVector(p.velocity, dt);

      let remove =
        p.life <= 0 ||
        p.mesh.position.y <= 0 ||
        this.pointHitsCollider(p.mesh.position) !== null;

      if (!remove && p.fromPlayer) {
        for (const e of this.enemies) {
          _vec3D.copy(e.rig.group.position);
          _vec3D.y += e.rig.height * 0.52;
          if (_vec3D.distanceTo(p.mesh.position) <= e.rig.radius + 0.4) {
            remove = true;
            break;
          }
        }
      } else if (!remove && !p.fromPlayer) {
        _vec3D.set(this.playerPos.x, 1.3, this.playerPos.z);
        if (_vec3D.distanceTo(p.mesh.position) <= 0.85) {
          this.damagePlayer(p.damage);
          remove = true;
        }
      }

      if (remove) {
        if (p.fromPlayer) {
          this.spawnExplosion(p.mesh.position, p.splashRadius, p.color, p.isPlasma);
          this.applySplashDamage(p.mesh.position, p.splashRadius, p.damage);
        }
        this.scene.remove(p.mesh);
        p.mesh.geometry.dispose();
        (p.mesh.material as THREE.Material).dispose();
        this.projectiles.splice(i, 1);
      }
    }

    for (let i = this.grenadesList.length - 1; i >= 0; i--) {
      const g = this.grenadesList[i];
      g.fuse -= dt;
      g.velocity.y -= 18 * dt;
      g.mesh.position.addScaledVector(g.velocity, dt);
      if (g.mesh.position.y < 0.14) {
        g.mesh.position.y = 0.14;
        if (Math.abs(g.velocity.y) > 2.2) {
          novaAudio.playGrenadeBounce();
        }
        g.velocity.y *= -0.45;
        g.velocity.x *= 0.72;
        g.velocity.z *= 0.72;
      }
      if (g.fuse <= 0) {
        this.spawnExplosion(g.mesh.position, 7.0, 0xf59e0b);
        this.applySplashDamage(
          g.mesh.position,
          7.0,
          220 * (this.doubleDamageTimer > 0 ? 2 : 1),
          true,
        );
        this.scene.remove(g.mesh);
        g.mesh.geometry.dispose();
        (g.mesh.material as THREE.Material).dispose();
        this.grenadesList.splice(i, 1);
      }
    }

    for (let i = this.tracers.length - 1; i >= 0; i--) {
      const t = this.tracers[i];
      t.life -= dt;
      if (t.life <= 0) {
        this.scene.remove(t.line);
        t.line.geometry.dispose();
        (t.line.material as THREE.Material).dispose();
        this.tracers.splice(i, 1);
      }
    }

    for (let i = this.explosions.length - 1; i >= 0; i--) {
      const ex = this.explosions[i];
      ex.life -= dt;
      const progress = 1 - ex.life / ex.maxLife;
      ex.mesh.scale.setScalar(1 + progress * 2.4);
      (ex.mesh.material as THREE.MeshBasicMaterial).opacity = Math.max(0, 0.8 * (1 - progress));
      if (ex.life <= 0) {
        this.scene.remove(ex.mesh);
        ex.mesh.geometry.dispose();
        (ex.mesh.material as THREE.Material).dispose();
        this.explosions.splice(i, 1);
      }
    }

    this.hudEmitAccum += dt;
    if (this.hudEmitAccum >= 0.065) {
      this.hudEmitAccum = 0;
      this.emitHud();
    }
  }

  private buildSnapshot(): HudSnapshot {
    const mission = this.getMissionSpec();
    const wave = mission.waves[this.waveIndex];
    const nearTerm = this.getNearestUnhackedTerminal();

    const blips: RadarBlip[] = [];
    for (const e of this.enemies) {
      blips.push({
        dx: e.rig.group.position.x - this.playerPos.x,
        dz: e.rig.group.position.z - this.playerPos.z,
        kind: e.kind,
      });
    }
    for (const t of this.level.terminals) {
      if (!t.hacked) {
        blips.push({
          dx: t.position.x - this.playerPos.x,
          dz: t.position.z - this.playerPos.z,
          kind: 'terminal',
        });
      }
    }

    return {
      health: Math.ceil(this.health),
      maxHealth: this.maxHealth,
      shield: Math.ceil(this.shield),
      maxShield: this.maxShield,
      suitEnergy: Math.round(this.suitEnergy),
      paralyzerActive: this.paralyzerTimer > 0,
      doubleDamageRemaining: Math.ceil(this.doubleDamageTimer),
      grenades: this.grenades,
      activeWeapon: this.activeWeapon,
      unlockedWeapons: this.unlockedWeapons,
      magAmmo: { ...this.magAmmo },
      reserveAmmo: { ...this.reserveAmmo },
      plasmaPower: Math.round(this.plasmaPower),
      maxPlasmaPower: this.maxPlasmaPower,
      isReloading: this.reloadTimer > 0,
      isScoped: this.isScoped,
      score: this.score,
      kills: this.kills,
      headshots: this.headshots,
      shotsFired: this.shotsFired,
      shotsHit: this.shotsHit,
      waveIndex: this.waveIndex + 1,
      totalWaves: mission.waves.length,
      waveLabel: wave ? wave.label : 'Level Cleared',
      enemiesRemaining: this.enemies.length,
      nearTerminalId: nearTerm?.id ?? null,
      nearTerminalLabel: nearTerm?.label ?? null,
      pointerLocked: this.pointerLocked,
      gamepadConnected: this.gamepadConnected,
      gamepadLabel: this.gamepadLabel,
      damageFlash: this.damageFlash,
      hitmarker: this.hitmarker,
      hitmarkerSeq: this.hitmarkerSeq,
      toast: this.toast,
      radarBlips: blips,
      playerYaw: this.yaw,
      elapsedSeconds: Math.floor(this.elapsedSeconds),
      status: this.status,
    };
  }

  private emitHud(): void {
    this.callbacks.onHudUpdate(this.buildSnapshot());
  }

  public dispose(): void {
    this.disposed = true;
    cancelAnimationFrame(this.frameId);
    clearTimeout(this.frameId);
    this.releasePointerLock();
    novaAudio.stopMusic();

    window.removeEventListener('resize', this.onResizeBound);
    window.removeEventListener('keydown', this.onKeyDownBound);
    window.removeEventListener('keyup', this.onKeyUpBound);
    this.renderer.domElement.removeEventListener('mousedown', this.onMouseDownBound);
    window.removeEventListener('mouseup', this.onMouseUpBound);
    window.removeEventListener('mousemove', this.onMouseMoveBound);
    this.renderer.domElement.removeEventListener('wheel', this.onWheelBound);
    this.renderer.domElement.removeEventListener('contextmenu', this.onContextMenuBound);
    document.removeEventListener('pointerlockchange', this.onPointerLockChangeBound);
    this.renderer.domElement.removeEventListener('webglcontextlost', this.onContextLostBound);
    this.renderer.domElement.removeEventListener('webglcontextrestored', this.onContextRestoredBound);
    window.removeEventListener('gamepadconnected', this.onGamepadChangeBound);
    window.removeEventListener('gamepaddisconnected', this.onGamepadChangeBound);

    this.level.dispose();
    this.renderer.dispose();
    if (this.renderer.domElement.parentNode === this.container) {
      this.container.removeChild(this.renderer.domElement);
    }
  }
}
