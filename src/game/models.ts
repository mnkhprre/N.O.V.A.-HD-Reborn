import * as THREE from 'three';
import { GLTFLoader } from 'three/examples/jsm/loaders/GLTFLoader.js';
import { loadOriginalTexture } from './textures';
import type { EnemyKind, WeaponId } from './types';

export interface WeaponViewModel {
  group: THREE.Group;
  muzzlePoint: THREE.Object3D;
}

export interface EnemyModelRig {
  group: THREE.Group;
  modelRoot: THREE.Group;
  hitMeshes: THREE.Mesh[];
  bodyMat: THREE.MeshStandardMaterial;
  height: number;
  radius: number;
}

const gltfLoader = new GLTFLoader();
const modelCache = new Map<string, THREE.Group>();
const modelPromises = new Map<string, Promise<THREE.Group>>();

const MODEL_PATHS: readonly string[] = [
  'handgun.glb',
  'assault.glb',
  'shotgun.glb',
  'sniper.glb',
  'plasma.glb',
  'rocket.glb',
  'grunt.glb',
  'imp.glb',
  'fiend.glb',
  'daemon.glb',
];

function loadOriginalGlb(filename: string): Promise<THREE.Group> {
  const cached = modelCache.get(filename);
  if (cached) return Promise.resolve(cached);

  const pending = modelPromises.get(filename);
  if (pending) return pending;

  const promise = new Promise<THREE.Group>((resolve, reject) => {
    gltfLoader.load(
      `/models/${filename}`,
      (gltf) => {
        modelCache.set(filename, gltf.scene);
        resolve(gltf.scene);
      },
      undefined,
      (err) => reject(err),
    );
  });
  modelPromises.set(filename, promise);
  return promise;
}

export function preloadOriginalModels(): Promise<void> {
  return Promise.all(MODEL_PATHS.map((f) => loadOriginalGlb(f).catch(() => null))).then(
    () => undefined,
  );
}

// Start preloading original .bdae -> .glb assets immediately at startup
void preloadOriginalModels();

const WEAPON_GLB_MAP: Record<WeaponId, string> = {
  handgun: 'handgun.glb',
  assault: 'assault.glb',
  shotgun: 'shotgun.glb',
  sniper: 'sniper.glb',
  plasma: 'plasma.glb',
  rocket: 'rocket.glb',
};

const WEAPON_TEXTURE_MAP: Record<WeaponId, string> = {
  handgun: 'weapon_handgun.png',
  assault: 'weapon_assault.png',
  shotgun: 'weapon_shotgun.png',
  sniper: 'weapon_sniper.png',
  plasma: 'weapon_plasmagun.png',
  rocket: 'weapon_rocket.png',
};

const WEAPON_MUZZLE_Z: Record<WeaponId, number> = {
  handgun: -0.2,
  assault: -0.35,
  shotgun: -0.4,
  sniper: -0.49,
  plasma: -0.36,
  rocket: -0.47,
};

const ENEMY_GLB_MAP: Record<EnemyKind, string> = {
  grunt: 'grunt.glb',
  imp: 'imp.glb',
  fiend: 'fiend.glb',
  daemon: 'daemon.glb',
};

const ENEMY_TEXTURE_MAP: Record<EnemyKind, string> = {
  grunt: 'grunt.png',
  imp: 'imp.png',
  fiend: 'fiend.png',
  daemon: 'daemon.png',
};

const ENEMY_METRICS: Record<EnemyKind, { height: number; radius: number }> = {
  grunt: { height: 1.95, radius: 0.56 },
  imp: { height: 1.72, radius: 0.58 },
  fiend: { height: 1.38, radius: 0.72 },
  daemon: { height: 2.65, radius: 0.84 },
};

const metalDark = new THREE.MeshStandardMaterial({
  color: 0x1e293b,
  metalness: 0.82,
  roughness: 0.28,
});

export function createWeaponViewModel(id: WeaponId): WeaponViewModel {
  const group = new THREE.Group();
  const muzzlePoint = new THREE.Object3D();
  muzzlePoint.position.set(0, 0.02, WEAPON_MUZZLE_Z[id]);
  group.add(muzzlePoint);

  const weaponTex = loadOriginalTexture(WEAPON_TEXTURE_MAP[id], 1, 1, 4, false);
  const weaponMat = new THREE.MeshStandardMaterial({
    map: weaponTex,
    metalness: 0.42,
    roughness: 0.44,
    ...(id === 'plasma'
      ? {
          emissive: 0x10b981,
          emissiveMap: weaponTex,
          emissiveIntensity: 0.35,
        }
      : {}),
  });

  const mountScene = (template: THREE.Group) => {
    const clone = template.clone(true);
    clone.traverse((child) => {
      if ((child as THREE.Mesh).isMesh) {
        const mesh = child as THREE.Mesh;
        mesh.material = weaponMat;
        mesh.castShadow = false;
        mesh.receiveShadow = false;
      }
    });
    group.add(clone);
  };

  const cached = modelCache.get(WEAPON_GLB_MAP[id]);
  if (cached) {
    mountScene(cached);
  } else {
    void loadOriginalGlb(WEAPON_GLB_MAP[id]).then(mountScene);
  }

  return { group, muzzlePoint };
}

export function createEnemyModel(kind: EnemyKind): EnemyModelRig {
  const group = new THREE.Group();
  const modelRoot = new THREE.Group();
  group.add(modelRoot);

  const hitMeshes: THREE.Mesh[] = [];
  const skinTex = loadOriginalTexture(ENEMY_TEXTURE_MAP[kind], 1, 1, 4, false);
  const bodyMat = new THREE.MeshStandardMaterial({
    map: skinTex,
    roughness: 0.52,
    metalness: 0.28,
  });

  const mountScene = (template: THREE.Group) => {
    const clone = template.clone(true);
    clone.traverse((child) => {
      if ((child as THREE.Mesh).isMesh) {
        const mesh = child as THREE.Mesh;
        mesh.material = bodyMat;
        mesh.castShadow = true;
        mesh.receiveShadow = true;
        if (group.userData.enemyId !== undefined) {
          mesh.userData.enemyId = group.userData.enemyId;
        }
        hitMeshes.push(mesh);
      }
    });
    modelRoot.add(clone);
  };

  const cached = modelCache.get(ENEMY_GLB_MAP[kind]);
  if (cached) {
    mountScene(cached);
  } else {
    void loadOriginalGlb(ENEMY_GLB_MAP[kind]).then(mountScene);
  }

  const metrics = ENEMY_METRICS[kind];
  return {
    group,
    modelRoot,
    hitMeshes,
    bodyMat,
    height: metrics.height,
    radius: metrics.radius,
  };
}

export function createPickupModel(
  kind: 'health' | 'ammo' | 'damage',
): THREE.Group {
  const group = new THREE.Group();
  const color =
    kind === 'health' ? 0x10b981 : kind === 'ammo' ? 0x06b6d4 : 0xf59e0b;

  const crateTex = loadOriginalTexture('crate.png', 1, 1, 4);
  const baseMat = new THREE.MeshStandardMaterial({
    map: crateTex,
    metalness: 0.45,
    roughness: 0.45,
  });
  const glowMat = new THREE.MeshStandardMaterial({
    color,
    emissive: color,
    emissiveIntensity: 1.5,
    roughness: 0.2,
    metalness: 0.2,
  });

  const casing = new THREE.Mesh(new THREE.BoxGeometry(0.7, 0.42, 0.5), baseMat);
  casing.position.y = 0.35;
  casing.castShadow = true;

  const core = new THREE.Mesh(new THREE.OctahedronGeometry(0.18, 0), glowMat);
  core.position.y = 0.76;

  const strip = new THREE.Mesh(new THREE.BoxGeometry(0.74, 0.08, 0.54), glowMat);
  strip.position.y = 0.35;

  group.add(casing, core, strip);
  return group;
}

export function createTerminalModel(): THREE.Group {
  const group = new THREE.Group();
  const consoleTex = loadOriginalTexture('ship_console.png', 1, 1, 4);

  const plinth = new THREE.Mesh(
    new THREE.BoxGeometry(1.1, 0.22, 0.9),
    metalDark,
  );
  plinth.position.y = 0.11;
  plinth.receiveShadow = true;
  plinth.castShadow = true;

  const column = new THREE.Mesh(
    new THREE.BoxGeometry(0.55, 1.05, 0.45),
    new THREE.MeshStandardMaterial({
      map: consoleTex,
      metalness: 0.5,
      roughness: 0.4,
    }),
  );
  column.position.y = 0.72;
  column.castShadow = true;

  const screenHousing = new THREE.Mesh(
    new THREE.BoxGeometry(0.88, 0.58, 0.12),
    metalDark,
  );
  screenHousing.position.set(0, 1.38, 0.08);
  screenHousing.rotation.x = -0.35;

  const screenMat = new THREE.MeshStandardMaterial({
    map: consoleTex,
    color: 0x22d3ee,
    emissive: 0x0891b2,
    emissiveIntensity: 1.1,
    roughness: 0.2,
    metalness: 0.15,
  });
  const screen = new THREE.Mesh(
    new THREE.PlaneGeometry(0.74, 0.44),
    screenMat,
  );
  screen.position.set(0, 1.38, 0.15);
  screen.rotation.x = -0.35;

  group.add(plinth, column, screenHousing, screen);
  return group;
}
