import type {
  AchievementDef,
  CareerStats,
  DifficultyId,
  GameSettings,
  HackDir,
  HackPuzzleCell,
  HackPuzzleDef,
  HackTileCode,
  MissionSpec,
  WeaponId,
  WeaponSpec,
} from './types';

// Weapon specs parsed from Games/nova/weapon_*.pack/*_config.xml and MAIN_EN.bin
// Damage scaled x10 relative to enemy HP pools so XML damage ratios hold exactly.
export const WEAPONS: Record<WeaponId, WeaponSpec> = {
  handgun: {
    id: 'handgun',
    slot: 1,
    name: 'Handgun',
    fireMode: 'semi',
    damage: 20, // HANDGUN_DAMAGE = 2.0
    maxRange: 33, // HANDGUN_MAX_RANGE = 3300
    pellets: 1,
    spread: 0.008,
    fireRateMs: 220,
    reloadMs: 1666, // HANDGUN_RELOAD_TIME = 1666
    magSize: 8, // HANDGUN_CLIP_SIZE = 8
    initialAmmo: 8,
    maxReserve: 999, // HANDGUN_INITIAL_AMO = -1
    infiniteReserve: true,
    color: '#38bdf8',
    recoil: 0.025,
  },
  assault: {
    id: 'assault',
    slot: 2,
    name: 'Assault rifle',
    fireMode: 'auto',
    damage: 22, // ASSAULT_RIFLE_DAMAGE_CLOSE = 2.2
    maxRange: 65, // ASSAULT_RIFLE_MAX_RANGE = 6500
    pellets: 1,
    spread: 0.02, // ASSAULT_RIFLE_MAX_SPREAD = 2.0
    fireRateMs: 105,
    reloadMs: 1266, // ASSAULT_RIFLE_RELOAD_TIME = 1266
    magSize: 40, // ASSAULT_RIFLE_CLIP_SIZE = 40
    initialAmmo: 300, // ASSAULT_RIFLE_INITIAL_AMO = 300
    maxReserve: 400, // ASSAULT_RIFLE_MAX_AMO = 400
    color: '#06b6d4',
    recoil: 0.018,
  },
  shotgun: {
    id: 'shotgun',
    slot: 3,
    name: 'Shotgun',
    fireMode: 'semi',
    damage: 50, // SHOTGUN_DAMAGE_CLOSE = 5.0
    farDamage: 30, // SHOTGUN_DAMAGE_FAR = 3.0
    closeRange: 9, // SHOTGUN_DAMAGE_CLOSE_RANGE = 900
    maxRange: 25, // SHOTGUN_MAX_RANGE = 2500
    pellets: 3, // SHOTGUN_NB_OF_RAYS = 3
    spread: 0.1, // SHOTGUN_SPREAD_ANGLE = 12.0
    fireRateMs: 720,
    reloadMs: 3000, // SHOTGUN_RELOAD_TIME = 3000
    shortReloadMs: 700, // SHOTGUN_SHORT_RELOAD_TIME = 700
    magSize: 8, // SHOTGUN_CLIP_SIZE = 8
    initialAmmo: 48, // SHOTGUN_INITIAL_AMO = 48
    maxReserve: 40, // SHOTGUN_MAX_AMO = 40
    color: '#f59e0b',
    recoil: 0.065,
  },
  sniper: {
    id: 'sniper',
    slot: 4,
    name: 'Sniper rifle',
    fireMode: 'semi',
    damage: 500, // SNIPER_RIFLE_DAMAGE_CLOSE = 50.0
    maxRange: 120, // SNIPER_RIFLE_MAX_RANGE = 12000
    pellets: 1,
    spread: 0.001,
    fireRateMs: 400,
    reloadMs: 1233, // SNIPER_RIFLE_RELOAD_TIME = 1233
    magSize: 1, // SNIPER_RIFLE_CLIP_SIZE = 1
    initialAmmo: 10, // SNIPER_RIFLE_INITIAL_AMO = 10
    maxReserve: 9, // SNIPER_RIFLE_MAX_AMO = 9
    color: '#22d3ee',
    zoomFov: 36, // SNIPER_RIFLE_AIM_FOV = 0.5
    recoil: 0.08,
  },
  plasma: {
    id: 'plasma',
    slot: 5,
    name: 'Plasma gun',
    fireMode: 'auto',
    damage: 50, // PLASMAGUN_START_DAMAGE = 5.0 (+70/s ramp)
    maxRange: 40.32, // PLASMAGUN_MAX_RANGE = 4032
    pellets: 1,
    spread: 0.015,
    fireRateMs: 165,
    reloadMs: 1000, // PLASMAGUN_POWER_RECOVER_DELAY = 1000
    magSize: 60, // PLASMAGUN_MAX_POWER = 60
    initialAmmo: 60,
    maxReserve: 60,
    isEnergyPool: true,
    projectileSpeed: 54,
    splashRadius: 4.0, // PLASMAGUN_MIN_DAMAGE_RADIUS = 400
    color: '#34d399',
    recoil: 0.03,
  },
  rocket: {
    id: 'rocket',
    slot: 6,
    name: 'Rocket launcher',
    fireMode: 'semi',
    damage: 1000, // ROCKET_LAUNCHER_DAMAGE = 100.0
    maxRange: 170, // ROCKET_LAUNCHER_MAX_RANGE = 17000
    pellets: 1,
    spread: 0.003,
    fireRateMs: 400,
    reloadMs: 1666, // ROCKET_LAUNCHER_RELOAD_TIME = 1666
    magSize: 1, // ROCKET_LAUNCHER_CLIP_SIZE = 1
    initialAmmo: 2, // ROCKET_LAUNCHER_INITIAL_AMO = 2
    maxReserve: 6, // ROCKET_LAUNCHER_MAX_AMO = 6
    projectileSpeed: 36,
    splashRadius: 5.0, // ROCKET_LAUNCHER_DAMAGE_RADIUS = 500
    color: '#ef4444',
    recoil: 0.11,
  },
};

export const WEAPON_ORDER: WeaponId[] = [
  'handgun',
  'assault',
  'shotgun',
  'sniper',
  'plasma',
  'rocket',
];

// Strictly the original levels present in location_01_ship.pack and location_06_jungle.pack
export const MISSIONS: MissionSpec[] = [
  {
    id: 'ship_l1',
    packFile: 'location_01_ship.pack',
    levelFile: 'level_01.lvl',
    locationName: 'Cargo Ship',
    chapter: 'Cargo Ship · Level 1',
    title: '(Un)Happy to Help',
    briefing:
      'Board the colonial cargo ship in orbit. Neutralize Grunt, Imp, Fiend, and Red Daemon hostiles across the cargo hangar and hack the ship circuit terminal.',
    objectiveSummary: 'Clear cargo hangar hostiles and override the ship console',
    accentHex: '#06b6d4',
    skyHex: '#050b14',
    hackPuzzleIds: ['hacking_minigame_ship01_01'],
    waves: [
      {
        label: 'Wave 1 · Cargo Bay',
        spawns: [
          { kind: 'grunt', count: 4 },
          { kind: 'imp', count: 2 },
        ],
      },
      {
        label: 'Wave 2 · Hangar Deck',
        spawns: [
          { kind: 'grunt', count: 4 },
          { kind: 'imp', count: 2 },
          { kind: 'fiend', count: 2 },
        ],
      },
      {
        label: 'Wave 3 · Command Deck',
        spawns: [
          { kind: 'grunt', count: 3 },
          { kind: 'fiend', count: 2 },
          { kind: 'daemon', count: 1 },
        ],
      },
    ],
  },
  {
    id: 'ship_l2',
    packFile: 'location_01_ship.pack',
    levelFile: 'level_02.lvl',
    locationName: 'Cargo Ship',
    chapter: 'Cargo Ship · Level 2',
    title: 'A Spark in the Void',
    briefing:
      'Advance through the split maintenance corridors and outer engine bay. Defeat heavy Red Daemons and bypass security circuits.',
    objectiveSummary: 'Secure the maintenance corridor and self-destruct console',
    accentHex: '#38bdf8',
    skyHex: '#040812',
    hackPuzzleIds: ['mini_easy_01', 'mini_easy_03', 'mini_easy_04', 'mini_easy_spliter'],
    waves: [
      {
        label: 'Wave 1 · Maintenance Corridor',
        spawns: [
          { kind: 'grunt', count: 5 },
          { kind: 'imp', count: 3 },
        ],
      },
      {
        label: 'Wave 2 · Engine Split',
        spawns: [
          { kind: 'imp', count: 3 },
          { kind: 'fiend', count: 3 },
          { kind: 'daemon', count: 1 },
        ],
      },
      {
        label: 'Wave 3 · Reactor Self-Destruct',
        spawns: [
          { kind: 'grunt', count: 4 },
          { kind: 'fiend', count: 2 },
          { kind: 'daemon', count: 2 },
        ],
      },
    ],
  },
  {
    id: 'jungle_l1',
    packFile: 'location_06_jungle.pack',
    levelFile: 'jr_Level_01_part1.lvl',
    locationName: 'Jungle',
    chapter: 'Jungle · Level 1',
    title: 'Falling Into Paradise',
    briefing:
      'Drop pod touched down in the alien jungle valley. Push past mossy canyon rocks, crystal clusters, and Xeno ambushes.',
    objectiveSummary: 'Fight through the jungle canyon and clear Xeno packs',
    accentHex: '#10b981',
    skyHex: '#07171a',
    hackPuzzleIds: ['mini_easy_09', 'mini_easy_10', 'mini_jungle01_02'],
    waves: [
      {
        label: 'Wave 1 · Drop Pod Crash',
        spawns: [
          { kind: 'imp', count: 4 },
          { kind: 'grunt', count: 3 },
        ],
      },
      {
        label: 'Wave 2 · Crystal Canyon',
        spawns: [
          { kind: 'grunt', count: 4 },
          { kind: 'fiend', count: 3 },
          { kind: 'imp', count: 2 },
        ],
      },
      {
        label: 'Wave 3 · Valley Ambush',
        spawns: [
          { kind: 'fiend', count: 3 },
          { kind: 'grunt', count: 4 },
          { kind: 'daemon', count: 2 },
        ],
      },
    ],
  },
  {
    id: 'jungle_l2',
    packFile: 'location_06_jungle.pack',
    levelFile: 'jr_Level_01_part2.lvl',
    locationName: 'Jungle',
    chapter: 'Jungle · Level 2',
    title: 'Falling Into Paradise Part 2',
    briefing:
      'Breach the inner Xeno stronghold and crystal portal courtyard. Eliminate Red Daemon commanders and override the final relay circuits.',
    objectiveSummary: 'Storm the Xeno jungle outpost and secure the crystal portal',
    accentHex: '#34d399',
    skyHex: '#051518',
    hackPuzzleIds: ['mini_jungle01_01', 'mini_easy_05', 'mini_easy_06'],
    waves: [
      {
        label: 'Wave 1 · Outpost Perimeter',
        spawns: [
          { kind: 'grunt', count: 5 },
          { kind: 'imp', count: 4 },
        ],
      },
      {
        label: 'Wave 2 · Crystal Gate',
        spawns: [
          { kind: 'fiend', count: 4 },
          { kind: 'grunt', count: 4 },
          { kind: 'daemon', count: 2 },
        ],
      },
      {
        label: 'Wave 3 · Portal Core',
        spawns: [
          { kind: 'imp', count: 3 },
          { kind: 'fiend', count: 3 },
          { kind: 'daemon', count: 3 },
        ],
      },
    ],
  },
];

function c(type: HackTileCode, dir?: HackDir): HackPuzzleCell {
  return dir === undefined ? { type } : { type, dir };
}

// Exact 6x9 grids from Games/nova/entities.pack/*.xml
export const HACKING_PUZZLES: Record<string, HackPuzzleDef> = {
  hacking_minigame_ship01_01: {
    id: 'hacking_minigame_ship01_01',
    title: 'Ship Circuit · ship01_01',
    rows: 6,
    columns: 9,
    mirrors: 4,
    splitters: 0,
    grid: [
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(1, 3), c(0), c(2, 1), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
    ],
  },
  mini_easy_01: {
    id: 'mini_easy_01',
    title: 'Maintenance Node · mini_easy_01',
    rows: 6,
    columns: 9,
    mirrors: 0,
    splitters: 1,
    grid: [
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(2, 1), c(0), c(3, 2), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(5), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(1, 3)],
      [c(2, 1), c(0), c(3, 3), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
    ],
  },
  mini_easy_03: {
    id: 'mini_easy_03',
    title: 'Maintenance Node · mini_easy_03',
    rows: 6,
    columns: 9,
    mirrors: 2,
    splitters: 0,
    grid: [
      [c(3, 1), c(0), c(2, 3), c(0), c(0), c(6), c(0), c(0), c(1, 3)],
      [c(0), c(0), c(5), c(5), c(0), c(0), c(0), c(5), c(0)],
      [c(4), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(0), c(0), c(5), c(0), c(0), c(0)],
      [c(0), c(0), c(6), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(2, 0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
    ],
  },
  mini_easy_04: {
    id: 'mini_easy_04',
    title: 'Maintenance Node · mini_easy_04',
    rows: 6,
    columns: 9,
    mirrors: 3,
    splitters: 1,
    grid: [
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(2, 1), c(0), c(0), c(0), c(0), c(6), c(0), c(0), c(1, 3)],
      [c(5), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(3, 3), c(0)],
      [c(2, 1), c(0), c(6), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
    ],
  },
  mini_easy_spliter: {
    id: 'mini_easy_spliter',
    title: 'Splitter Junction · mini_easy_spliter',
    rows: 6,
    columns: 9,
    mirrors: 0,
    splitters: 1,
    grid: [
      [c(0), c(0), c(0), c(0), c(2, 2), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(2, 1), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(2, 3)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(0), c(1, 0), c(0), c(0), c(0), c(0)],
    ],
  },
  mini_easy_09: {
    id: 'mini_easy_09',
    title: 'Jungle Relay · mini_easy_09',
    rows: 6,
    columns: 9,
    mirrors: 3,
    splitters: 1,
    grid: [
      [c(2, 2), c(0), c(0), c(0), c(0), c(3, 1), c(0), c(0), c(2, 3)],
      [c(0), c(5), c(0), c(0), c(0), c(0), c(0), c(0), c(6)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(5), c(0), c(0)],
      [c(0), c(0), c(5), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(3, 0), c(0), c(0), c(0), c(0), c(0), c(5), c(0), c(0)],
      [c(2, 1), c(0), c(4), c(0), c(0), c(0), c(0), c(0), c(1, 0)],
    ],
  },
  mini_easy_10: {
    id: 'mini_easy_10',
    title: 'Jungle Relay · mini_easy_10',
    rows: 6,
    columns: 9,
    mirrors: 3,
    splitters: 1,
    grid: [
      [c(0), c(0), c(2, 2), c(0), c(0), c(0), c(2, 2), c(0), c(1, 2)],
      [c(0), c(6), c(0), c(0), c(0), c(0), c(0), c(6), c(0)],
      [c(0), c(0), c(0), c(5), c(3, 1), c(0), c(0), c(0), c(0)],
      [c(0), c(6), c(0), c(0), c(0), c(0), c(0), c(6), c(0)],
      [c(0), c(0), c(4), c(0), c(0), c(0), c(3, 0), c(0), c(0)],
      [c(2, 0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(5)],
    ],
  },
  mini_jungle01_02: {
    id: 'mini_jungle01_02',
    title: 'Jungle Base · mini_jungle01_02',
    rows: 6,
    columns: 9,
    mirrors: 1,
    splitters: 5,
    grid: [
      [c(0), c(0), c(2, 2), c(2, 2), c(2, 2), c(2, 2), c(2, 2), c(0), c(0)],
      [c(6), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(6)],
      [c(6), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(6)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(1, 0), c(0), c(5), c(5), c(5), c(5), c(5), c(0), c(0)],
    ],
  },
  mini_jungle01_01: {
    id: 'mini_jungle01_01',
    title: 'Jungle Outpost · mini_jungle01_01',
    rows: 6,
    columns: 9,
    mirrors: 4,
    splitters: 1,
    grid: [
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(2, 2), c(0), c(0), c(0), c(0), c(0)],
      [c(6), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(2, 1), c(0), c(0), c(0), c(0), c(6), c(0), c(0), c(1, 3)],
      [c(6), c(0), c(0), c(0), c(4), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(2, 0), c(0), c(0), c(0), c(0), c(0)],
    ],
  },
  mini_easy_05: {
    id: 'mini_easy_05',
    title: 'Portal Relay · mini_easy_05',
    rows: 6,
    columns: 9,
    mirrors: 1,
    splitters: 2,
    grid: [
      [c(2, 2), c(0), c(0), c(5), c(0), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(2, 3)],
      [c(0), c(5), c(0), c(0), c(0), c(0), c(5), c(0), c(0)],
      [c(0), c(0), c(0), c(0), c(6), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(2, 0), c(0), c(5), c(0), c(0), c(0), c(0), c(0), c(1, 3)],
    ],
  },
  mini_easy_06: {
    id: 'mini_easy_06',
    title: 'Portal Core · mini_easy_06',
    rows: 6,
    columns: 9,
    mirrors: 2,
    splitters: 2,
    grid: [
      [c(0), c(0), c(2, 2), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(0), c(0), c(0), c(5), c(0), c(0), c(0), c(0), c(1, 3)],
      [c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0), c(0)],
      [c(0), c(6), c(0), c(6), c(0), c(0), c(0), c(5), c(0)],
      [c(0), c(0), c(3, 0), c(0), c(0), c(0), c(0), c(0), c(2, 3)],
      [c(2, 0), c(0), c(0), c(2, 0), c(0), c(0), c(0), c(0), c(0)],
    ],
  },
};

export const DIFFICULTY_MULT: Record<
  DifficultyId,
  { label: string; enemyHp: number; enemyDmg: number; scoreMult: number }
> = {
  easy: { label: 'Easy', enemyHp: 0.78, enemyDmg: 0.7, scoreMult: 0.85 },
  normal: { label: 'Normal', enemyHp: 1.0, enemyDmg: 1.0, scoreMult: 1.0 },
  hard: { label: 'Hard', enemyHp: 1.35, enemyDmg: 1.4, scoreMult: 1.5 },
};

// Exact achievement titles & descriptions from strings.pack/MAIN_EN.bin
export const ACHIEVEMENTS: AchievementDef[] = [
  {
    id: 'duelist',
    title: 'Duelist',
    description: 'Kill 20 enemies with the pistol',
  },
  {
    id: 'smooth_assassin',
    title: 'Smooth Assassin',
    description: '20 headshots',
  },
  {
    id: 'paralyzer',
    title: 'Paralyzer',
    description: 'Paralyze 20 enemies',
  },
  {
    id: 'hacker',
    title: 'Hacker',
    description: 'Override 3 circuit terminals',
  },
  {
    id: 'short_fused',
    title: 'Short-Fused',
    description: 'Kill 3 enemies with the same grenade',
  },
  {
    id: 'vanguard',
    title: 'Vanguard',
    description: 'Complete a sector mission',
  },
];

export const COLONIAL_DIRECTIVE =
  'N.O.V.A. Colonial Directive 12: "In a time of emergency, the Governor of Ceres reserves the right to recall to active duty any retired Vanguard officer."';

export const DEFAULT_SETTINGS: GameSettings = {
  sensitivity: 1.0,
  controllerSensitivity: 1.1,
  controllerDeadzone: 0.14,
  invertY: false,
  masterVolume: 0.65,
  fov: 75,
};

export const DEFAULT_STATS: CareerStats = {
  totalKills: 0,
  totalHeadshots: 0,
  totalShotsFired: 0,
  totalShotsHit: 0,
  hacksCompleted: 0,
  missionsCleared: 0,
  paralyzedEnemies: 0,
  pistolKills: 0,
  grenadeTripleKills: 0,
  unlockedAchievements: [],
  bestScores: {
    ship_l1: 0,
    ship_l2: 0,
    jungle_l1: 0,
    jungle_l2: 0,
  },
};

const STATS_KEY = 'nova_reborn_stats_v2';
const SETTINGS_KEY = 'nova_reborn_settings_v2';

export function loadCareerStats(): CareerStats {
  try {
    const raw = localStorage.getItem(STATS_KEY);
    if (!raw) return { ...DEFAULT_STATS, bestScores: { ...DEFAULT_STATS.bestScores } };
    const parsed = JSON.parse(raw) as Partial<CareerStats>;
    return {
      ...DEFAULT_STATS,
      ...parsed,
      bestScores: { ...DEFAULT_STATS.bestScores, ...(parsed.bestScores ?? {}) },
      unlockedAchievements: Array.isArray(parsed.unlockedAchievements)
        ? parsed.unlockedAchievements
        : [],
    };
  } catch {
    return { ...DEFAULT_STATS, bestScores: { ...DEFAULT_STATS.bestScores } };
  }
}

export function saveCareerStats(stats: CareerStats): void {
  try {
    localStorage.setItem(STATS_KEY, JSON.stringify(stats));
  } catch {
    // Ignore storage quota errors
  }
}

export function loadSettings(): GameSettings {
  try {
    const raw = localStorage.getItem(SETTINGS_KEY);
    if (!raw) return { ...DEFAULT_SETTINGS };
    return { ...DEFAULT_SETTINGS, ...(JSON.parse(raw) as Partial<GameSettings>) };
  } catch {
    return { ...DEFAULT_SETTINGS };
  }
}

export function saveSettings(settings: GameSettings): void {
  try {
    localStorage.setItem(SETTINGS_KEY, JSON.stringify(settings));
  } catch {
    // Ignore storage quota errors
  }
}
