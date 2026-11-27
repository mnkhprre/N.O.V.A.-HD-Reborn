export type WeaponId =
  | 'handgun'
  | 'assault'
  | 'shotgun'
  | 'sniper'
  | 'plasma'
  | 'rocket';

export type MissionId = 'ship_l1' | 'ship_l2' | 'jungle_l1' | 'jungle_l2';

export type DifficultyId = 'easy' | 'normal' | 'hard';

export type EnemyKind = 'grunt' | 'imp' | 'fiend' | 'daemon';

export interface WeaponSpec {
  id: WeaponId;
  slot: number;
  name: string;
  fireMode: 'semi' | 'auto';
  damage: number;
  farDamage?: number;
  closeRange?: number;
  maxRange: number;
  pellets: number;
  spread: number;
  fireRateMs: number;
  reloadMs: number;
  shortReloadMs?: number;
  magSize: number;
  initialAmmo: number;
  maxReserve: number;
  infiniteReserve?: boolean;
  isEnergyPool?: boolean;
  projectileSpeed?: number;
  splashRadius?: number;
  color: string;
  zoomFov?: number;
  recoil: number;
}

export interface WaveSpec {
  label: string;
  spawns: Array<{
    kind: EnemyKind;
    count: number;
  }>;
}

export interface MissionSpec {
  id: MissionId;
  packFile: string;
  levelFile: string;
  locationName: string;
  chapter: string;
  title: string;
  briefing: string;
  objectiveSummary: string;
  accentHex: string;
  skyHex: string;
  hackPuzzleIds: string[];
  waves: WaveSpec[];
}

export type HackTileCode = 0 | 1 | 2 | 3 | 4 | 5 | 6;
export type HackDir = 0 | 1 | 2 | 3; // 0=UP, 1=RIGHT, 2=DOWN, 3=LEFT

export interface HackPuzzleCell {
  type: HackTileCode;
  dir?: HackDir;
}

export interface HackPuzzleDef {
  id: string;
  title: string;
  rows: number;
  columns: number;
  mirrors: number;
  splitters: number;
  grid: HackPuzzleCell[][];
}

export interface GameSettings {
  sensitivity: number;
  controllerSensitivity: number;
  controllerDeadzone: number;
  invertY: boolean;
  masterVolume: number;
  fov: number;
}

export interface RadarBlip {
  dx: number;
  dz: number;
  kind: EnemyKind | 'terminal' | 'pickup';
}

export interface HudSnapshot {
  health: number;
  maxHealth: number;
  shield: number;
  maxShield: number;
  suitEnergy: number;
  paralyzerActive: boolean;
  doubleDamageRemaining: number;
  grenades: number;
  activeWeapon: WeaponId;
  unlockedWeapons: WeaponId[];
  magAmmo: Record<WeaponId, number>;
  reserveAmmo: Record<WeaponId, number>;
  plasmaPower: number;
  maxPlasmaPower: number;
  isReloading: boolean;
  isScoped: boolean;
  score: number;
  kills: number;
  headshots: number;
  shotsFired: number;
  shotsHit: number;
  waveIndex: number;
  totalWaves: number;
  waveLabel: string;
  enemiesRemaining: number;
  nearTerminalId: string | null;
  nearTerminalLabel: string | null;
  pointerLocked: boolean;
  gamepadConnected: boolean;
  gamepadLabel: string | null;
  damageFlash: number;
  hitmarker: 'none' | 'body' | 'head';
  hitmarkerSeq: number;
  toast: string | null;
  radarBlips: RadarBlip[];
  playerYaw: number;
  elapsedSeconds: number;
  status: 'playing' | 'paused' | 'hacking' | 'victory' | 'defeat';
}

export interface AchievementDef {
  id: string;
  title: string;
  description: string;
}

export interface CareerStats {
  totalKills: number;
  totalHeadshots: number;
  totalShotsFired: number;
  totalShotsHit: number;
  hacksCompleted: number;
  missionsCleared: number;
  paralyzedEnemies: number;
  pistolKills: number;
  grenadeTripleKills: number;
  unlockedAchievements: string[];
  bestScores: Record<MissionId, number>;
}
