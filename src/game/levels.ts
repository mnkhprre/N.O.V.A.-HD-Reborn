import * as THREE from 'three';
import { MISSIONS } from './data';
import { createPickupModel, createTerminalModel } from './models';
import { loadOriginalTexture } from './textures';
import type { MissionId } from './types';

export interface BoxCollider {
  minX: number;
  maxX: number;
  minY: number;
  maxY: number;
  minZ: number;
  maxZ: number;
}

export interface TerminalNode {
  id: string;
  label: string;
  puzzleId: string;
  position: THREE.Vector3;
  hacked: boolean;
  mesh: THREE.Group;
}

export interface PickupNode {
  id: string;
  kind: 'health' | 'ammo' | 'damage';
  position: THREE.Vector3;
  active: boolean;
  respawnTimer: number;
  mesh: THREE.Group;
}

export interface LevelBuildResult {
  colliders: BoxCollider[];
  spawnPoints: THREE.Vector3[];
  playerSpawn: THREE.Vector3;
  terminals: TerminalNode[];
  pickups: PickupNode[];
  boundsRadius: number;
  dispose: () => void;
}

function addColliderBox(
  scene: THREE.Scene,
  colliders: BoxCollider[],
  x: number,
  y: number,
  z: number,
  w: number,
  h: number,
  d: number,
  mat: THREE.Material,
  castShadow = true,
  receiveShadow = true,
): THREE.Mesh {
  const geo = new THREE.BoxGeometry(w, h, d);
  const mesh = new THREE.Mesh(geo, mat);
  mesh.position.set(x, y, z);
  mesh.castShadow = castShadow;
  mesh.receiveShadow = receiveShadow;
  scene.add(mesh);

  colliders.push({
    minX: x - w / 2,
    maxX: x + w / 2,
    minY: y - h / 2,
    maxY: y + h / 2,
    minZ: z - d / 2,
    maxZ: z + d / 2,
  });
  return mesh;
}

export function buildMissionLevel(
  scene: THREE.Scene,
  missionId: MissionId,
  maxAnisotropy: number,
  isSoftwareGl: boolean,
): LevelBuildResult {
  const colliders: BoxCollider[] = [];
  const terminals: TerminalNode[] = [];
  const pickups: PickupNode[] = [];
  const disposables: Array<{ dispose: () => void }> = [];

  const registerMat = <T extends THREE.Material>(m: T): T => {
    disposables.push(m);
    return m;
  };

  const isJungle = missionId === 'jungle_l1' || missionId === 'jungle_l2';
  const hemi = new THREE.HemisphereLight(
    isJungle ? 0x6ee7b7 : 0x7dd3fc,
    0x0f172a,
    0.85,
  );
  scene.add(hemi);

  const keyLight = new THREE.DirectionalLight(0xfff7ed, 1.5);
  keyLight.position.set(22, 34, 18);
  if (!isSoftwareGl) {
    keyLight.castShadow = true;
    keyLight.shadow.mapSize.width = 1024;
    keyLight.shadow.mapSize.height = 1024;
    keyLight.shadow.camera.near = 2;
    keyLight.shadow.camera.far = 90;
    const d = 34;
    keyLight.shadow.camera.left = -d;
    keyLight.shadow.camera.right = d;
    keyLight.shadow.camera.top = d;
    keyLight.shadow.camera.bottom = -d;
    keyLight.shadow.bias = -0.0005;
    keyLight.shadow.normalBias = 0.02;
  }
  scene.add(keyLight);

  const rimLight = new THREE.DirectionalLight(
    isJungle ? 0x10b981 : 0x06b6d4,
    0.7,
  );
  rimLight.position.set(-20, 16, -24);
  scene.add(rimLight);

  const crateTex = loadOriginalTexture('crate.png', 1, 1, maxAnisotropy);
  const crateMat = registerMat(
    new THREE.MeshStandardMaterial({
      map: crateTex,
      roughness: 0.5,
      metalness: 0.45,
    }),
  );

  const containerTex = loadOriginalTexture('ship_container.png', 1, 1, maxAnisotropy);
  const containerMat = registerMat(
    new THREE.MeshStandardMaterial({
      map: containerTex,
      roughness: 0.45,
      metalness: 0.58,
    }),
  );

  let playerSpawn = new THREE.Vector3(0, 0, 22);
  let boundsRadius = 30;
  let spawnPoints: THREE.Vector3[] = [];

  if (missionId === 'ship_l1' || missionId === 'ship_l2') {
    const isLevel2 = missionId === 'ship_l2';
    scene.background = new THREE.Color(isLevel2 ? 0x040812 : 0x050b14);
    scene.fog = new THREE.FogExp2(isLevel2 ? 0x040812 : 0x050b14, 0.017);

    const floorTex = loadOriginalTexture('ship_floor.png', 14, 14, maxAnisotropy);
    const wallTex = loadOriginalTexture('ship_wall.png', 4, 1, maxAnisotropy);

    const deckMat = registerMat(
      new THREE.MeshStandardMaterial({
        map: floorTex,
        roughness: 0.52,
        metalness: 0.55,
      }),
    );
    const wallMat = registerMat(
      new THREE.MeshStandardMaterial({
        map: wallTex,
        roughness: 0.45,
        metalness: 0.65,
      }),
    );
    const cyanGlowMat = registerMat(
      new THREE.MeshStandardMaterial({
        color: isLevel2 ? 0x38bdf8 : 0x06b6d4,
        emissive: isLevel2 ? 0x38bdf8 : 0x06b6d4,
        emissiveIntensity: 1.5,
        roughness: 0.2,
      }),
    );

    const floor = new THREE.Mesh(new THREE.PlaneGeometry(72, 72), deckMat);
    floor.rotation.x = -Math.PI / 2;
    floor.receiveShadow = true;
    scene.add(floor);

    // Cargo ship outer bulkheads
    addColliderBox(scene, colliders, 0, 5, -32, 68, 10, 2, wallMat, false);
    addColliderBox(scene, colliders, 0, 5, 32, 68, 10, 2, wallMat, false);
    addColliderBox(scene, colliders, -32, 5, 0, 2, 10, 64, wallMat, false);
    addColliderBox(scene, colliders, 32, 5, 0, 2, 10, 64, wallMat, false);

    if (!isLevel2) {
      // level_01: (Un)Happy to Help — Cargo Hangar & central column
      addColliderBox(scene, colliders, 0, 4.5, 0, 4.5, 9, 4.5, wallMat);
      const reactorRing = new THREE.Mesh(
        new THREE.TorusGeometry(3.4, 0.18, 12, 32),
        cyanGlowMat,
      );
      reactorRing.rotation.x = Math.PI / 2;
      reactorRing.position.set(0, 4.2, 0);
      scene.add(reactorRing);

      // Cargo containers (location_01_ship container.bdae)
      addColliderBox(scene, colliders, -12, 1.6, 8, 4.2, 3.2, 2.4, containerMat);
      addColliderBox(scene, colliders, 12, 1.6, 8, 4.2, 3.2, 2.4, containerMat);
      addColliderBox(scene, colliders, -12, 1.6, -10, 2.6, 3.2, 4.4, containerMat);
      addColliderBox(scene, colliders, 12, 1.6, -10, 2.6, 3.2, 4.4, containerMat);

      // Small crates (crate_small_a / crate_small_b)
      addColliderBox(scene, colliders, 0, 0.9, 12, 3.4, 1.8, 1.8, crateMat);
      addColliderBox(scene, colliders, 0, 0.9, -13, 3.4, 1.8, 1.8, crateMat);
      addColliderBox(scene, colliders, -20, 2.5, 0, 3, 5, 7, wallMat);
      addColliderBox(scene, colliders, 20, 2.5, 0, 3, 5, 7, wallMat);
    } else {
      // level_02: A Spark in the Void — Split maintenance corridors & crane bay
      addColliderBox(scene, colliders, -8, 2.8, 0, 3.5, 5.6, 14, wallMat);
      addColliderBox(scene, colliders, 8, 2.8, 0, 3.5, 5.6, 14, wallMat);
      addColliderBox(scene, colliders, 0, 1.5, -14, 5.5, 3, 3.5, containerMat);
      addColliderBox(scene, colliders, -21, 1.6, 10, 4.4, 3.2, 2.6, containerMat);
      addColliderBox(scene, colliders, 21, 1.6, 10, 4.4, 3.2, 2.6, containerMat);
      addColliderBox(scene, colliders, -16, 0.9, -18, 2.2, 1.8, 2.2, crateMat);
      addColliderBox(scene, colliders, 16, 0.9, -18, 2.2, 1.8, 2.2, crateMat);

      const bridgeBeam = new THREE.Mesh(new THREE.BoxGeometry(22, 0.9, 2.4), wallMat);
      bridgeBeam.position.set(0, 6.2, 0);
      scene.add(bridgeBeam);

      const engineGlow = new THREE.Mesh(new THREE.CylinderGeometry(1.4, 1.4, 4.5, 16), cyanGlowMat);
      engineGlow.position.set(0, 2.25, -24);
      scene.add(engineGlow);
    }

    for (const z of [-20, -8, 8, 20]) {
      const rib = new THREE.Mesh(new THREE.BoxGeometry(64, 0.7, 1.2), wallMat);
      rib.position.set(0, 9.6, z);
      scene.add(rib);
    }

    playerSpawn = new THREE.Vector3(0, 0, 22);
    boundsRadius = 30;
    spawnPoints = [
      new THREE.Vector3(-18, 0, -22),
      new THREE.Vector3(18, 0, -22),
      new THREE.Vector3(0, 0, -24),
      new THREE.Vector3(-24, 0, 10),
      new THREE.Vector3(24, 0, 10),
      new THREE.Vector3(-14, 0, -4),
      new THREE.Vector3(14, 0, -4),
    ];
  } else {
    // jr_Level_01: Falling Into Paradise (location_06_jungle.pack)
    scene.background = new THREE.Color(0x07171a);
    scene.fog = new THREE.FogExp2(0x07171a, 0.02);

    const groundTex = loadOriginalTexture('jungle_ground.png', 20, 20, maxAnisotropy);
    const rockTex = loadOriginalTexture('jungle_rock.png', 2, 2, maxAnisotropy);
    const baseTex = loadOriginalTexture('jungle_base.png', 2, 1, maxAnisotropy);
    const crystalTex = loadOriginalTexture('crystal.png', 1, 1, maxAnisotropy);

    const groundMat = registerMat(
      new THREE.MeshStandardMaterial({
        map: groundTex,
        roughness: 0.88,
        metalness: 0.05,
      }),
    );
    const rockMat = registerMat(
      new THREE.MeshStandardMaterial({
        map: rockTex,
        roughness: 0.86,
        metalness: 0.08,
      }),
    );
    const baseMat = registerMat(
      new THREE.MeshStandardMaterial({
        map: baseTex,
        roughness: 0.55,
        metalness: 0.45,
      }),
    );
    const crystalMat = registerMat(
      new THREE.MeshStandardMaterial({
        map: crystalTex,
        emissive: 0x10b981,
        emissiveIntensity: 0.9,
        roughness: 0.2,
        metalness: 0.25,
      }),
    );
    const foliageMat = registerMat(
      new THREE.MeshStandardMaterial({
        color: 0x065f46,
        roughness: 0.72,
        metalness: 0.05,
      }),
    );

    const floor = new THREE.Mesh(new THREE.PlaneGeometry(160, 160), groundMat);
    floor.rotation.x = -Math.PI / 2;
    floor.receiveShadow = true;
    scene.add(floor);

    // Jungle canyon boulder perimeter
    const ringCount = 24;
    for (let i = 0; i < ringCount; i++) {
      const ang = (i / ringCount) * Math.PI * 2;
      const dist = 34 + (i % 3) * 2.5;
      const rx = Math.cos(ang) * dist;
      const rz = Math.sin(ang) * dist;
      const h = 7 + (i % 4) * 2.5;
      const w = 8.5 + (i % 2) * 3;
      const boulder = new THREE.Mesh(new THREE.DodecahedronGeometry(w * 0.65, 1), rockMat);
      boulder.position.set(rx, h * 0.35, rz);
      boulder.scale.set(1, h / w, 1);
      boulder.rotation.y = ang;
      boulder.receiveShadow = true;
      scene.add(boulder);

      colliders.push({
        minX: rx - 4,
        maxX: rx + 4,
        minY: 0,
        maxY: h,
        minZ: rz - 4,
        maxZ: rz + 4,
      });
    }

    // Alien canopy trees & bioluminescent crystal clusters
    const treeCoords: Array<[number, number]> = [
      [-12, -10],
      [13, -12],
      [-16, 12],
      [16, 11],
      [0, -18],
      [-23, -2],
      [23, 3],
      [-38, -22],
      [40, -18],
      [-42, 24],
      [38, 28],
    ];
    for (const [tx, tz] of treeCoords) {
      const treeGroup = new THREE.Group();
      treeGroup.position.set(tx, 0, tz);

      const trunk = new THREE.Mesh(new THREE.CylinderGeometry(0.45, 0.72, 6.2, 8), rockMat);
      trunk.position.y = 3.1;
      trunk.castShadow = true;
      trunk.receiveShadow = true;

      const canopy1 = new THREE.Mesh(new THREE.ConeGeometry(3.2, 3.0, 7), foliageMat);
      canopy1.position.y = 6.2;
      canopy1.castShadow = true;

      const canopy2 = new THREE.Mesh(new THREE.ConeGeometry(2.3, 2.4, 7), foliageMat);
      canopy2.position.y = 7.9;
      canopy2.castShadow = true;

      const spore = new THREE.Mesh(new THREE.OctahedronGeometry(0.45, 0), crystalMat);
      spore.position.set(0.8, 1.4, 0.6);

      treeGroup.add(trunk, canopy1, canopy2, spore);
      scene.add(treeGroup);

      if (Math.abs(tx) < 30 && Math.abs(tz) < 30) {
        colliders.push({
          minX: tx - 0.75,
          maxX: tx + 0.75,
          minY: 0,
          maxY: 7,
          minZ: tz - 0.75,
          maxZ: tz + 0.75,
        });
      }
    }

    // Drop pod / jungle base outpost structures & tactical boulders
    if (missionId === 'jungle_l2') {
      // jr_Level_01_part2: Inner Xeno stronghold & crystal portal courtyard
      addColliderBox(scene, colliders, -10, 2.2, 6, 3.8, 4.4, 8, baseMat);
      addColliderBox(scene, colliders, 10, 2.2, 6, 3.8, 4.4, 8, baseMat);
      addColliderBox(scene, colliders, 0, 1.5, -6, 6.2, 3.0, 2.8, baseMat);
      addColliderBox(scene, colliders, -18, 1.2, -12, 3.2, 2.4, 3.2, rockMat);
      addColliderBox(scene, colliders, 18, 1.2, -12, 3.2, 2.4, 3.2, rockMat);

      const portalRing = new THREE.Mesh(
        new THREE.TorusGeometry(4.2, 0.35, 12, 32),
        crystalMat,
      );
      portalRing.position.set(0, 4.2, -23);
      scene.add(portalRing);

      const portalLeft = new THREE.Mesh(new THREE.BoxGeometry(1.8, 7.5, 2.2), baseMat);
      portalLeft.position.set(-4.8, 3.75, -23);
      const portalRight = new THREE.Mesh(new THREE.BoxGeometry(1.8, 7.5, 2.2), baseMat);
      portalRight.position.set(4.8, 3.75, -23);
      scene.add(portalLeft, portalRight);
    } else {
      addColliderBox(scene, colliders, 0, 1.4, 0, 4.4, 2.8, 4.4, baseMat);
      addColliderBox(scene, colliders, -8, 1.1, 5, 2.8, 2.2, 2.6, rockMat);
      addColliderBox(scene, colliders, 9, 1.1, -3, 2.8, 2.2, 2.4, rockMat);
      addColliderBox(scene, colliders, -14, 1.3, -18, 4.5, 2.6, 2.4, baseMat);
      addColliderBox(scene, colliders, 14, 1.3, -18, 4.5, 2.6, 2.4, baseMat);
    }

    for (const [cx, cz] of [
      [-6, -15],
      [7, 13],
      [-18, -16],
      [18, -14],
    ]) {
      const crystal = new THREE.Mesh(new THREE.ConeGeometry(0.65, 2.8, 5), crystalMat);
      crystal.position.set(cx, 1.4, cz);
      scene.add(crystal);
    }

    playerSpawn = new THREE.Vector3(0, 0, 22);
    boundsRadius = 31;
    spawnPoints = [
      new THREE.Vector3(-18, 0, -20),
      new THREE.Vector3(18, 0, -20),
      new THREE.Vector3(0, 0, -24),
      new THREE.Vector3(-22, 0, 4),
      new THREE.Vector3(22, 0, 4),
      new THREE.Vector3(-10, 0, -14),
      new THREE.Vector3(10, 0, -14),
    ];
  }

  // Assign hack puzzles strictly from the mission's original XML list
  const mission = MISSIONS.find((m) => m.id === missionId) ?? MISSIONS[0];
  const puzzleIds = mission.hackPuzzleIds;
  const terminalPositions: Array<{ id: string; label: string; pos: [number, number] }> = [
    { id: 'term_left', label: 'Circuit Terminal A', pos: [-22, 16] },
    { id: 'term_right', label: 'Circuit Terminal B', pos: [22, -12] },
  ];
  terminalPositions.forEach((t, idx) => {
    const mesh = createTerminalModel();
    mesh.position.set(t.pos[0], 0, t.pos[1]);
    scene.add(mesh);
    colliders.push({
      minX: t.pos[0] - 0.55,
      maxX: t.pos[0] + 0.55,
      minY: 0,
      maxY: 1.6,
      minZ: t.pos[1] - 0.55,
      maxZ: t.pos[1] + 0.55,
    });
    terminals.push({
      id: t.id,
      label: t.label,
      puzzleId: puzzleIds[idx % puzzleIds.length],
      position: new THREE.Vector3(t.pos[0], 0, t.pos[1]),
      hacked: false,
      mesh,
    });
  });

  const pickupDefs: Array<{ id: string; kind: 'health' | 'ammo' | 'damage'; pos: [number, number] }> = [
    { id: 'pk_health_1', kind: 'health', pos: [-16, 18] },
    { id: 'pk_ammo_1', kind: 'ammo', pos: [16, 18] },
    { id: 'pk_health_2', kind: 'health', pos: [16, -18] },
    { id: 'pk_dmg_1', kind: 'damage', pos: [-16, -18] },
  ];
  for (const p of pickupDefs) {
    const mesh = createPickupModel(p.kind);
    mesh.position.set(p.pos[0], 0, p.pos[1]);
    scene.add(mesh);
    pickups.push({
      id: p.id,
      kind: p.kind,
      position: new THREE.Vector3(p.pos[0], 0, p.pos[1]),
      active: true,
      respawnTimer: 0,
      mesh,
    });
  }

  return {
    colliders,
    spawnPoints,
    playerSpawn,
    terminals,
    pickups,
    boundsRadius,
    dispose: () => {
      for (const d of disposables) d.dispose();
    },
  };
}
