import React, { useState } from 'react';
import { Crosshair, Gamepad2, Play, Shield, Trophy } from 'lucide-react';
import {
  ACHIEVEMENTS,
  COLONIAL_DIRECTIVE,
  DIFFICULTY_MULT,
  MISSIONS,
  WEAPONS,
  WEAPON_ORDER,
} from '../game/data';
import { novaAudio } from '../game/audio';
import { ENFORCE_ARM64_LOCK, type ArchCheckResult } from '../game/archGuard';
import { useGamepadMenuNav, useGamepadStatus } from '../game/gamepad';
import type {
  CareerStats,
  DifficultyId,
  GameSettings,
  MissionId,
} from '../game/types';

type MenuTab = 'briefing' | 'arsenal' | 'achievements' | 'settings';
const MENU_TABS: MenuTab[] = ['briefing', 'arsenal', 'achievements', 'settings'];
const DIFFICULTIES: DifficultyId[] = ['easy', 'normal', 'hard'];

interface TitleScreenProps {
  selectedMission: MissionId;
  selectedDifficulty: DifficultyId;
  settings: GameSettings;
  stats: CareerStats;
  archResult?: ArchCheckResult | null;
  onSelectMission: (id: MissionId) => void;
  onSelectDifficulty: (id: DifficultyId) => void;
  onUpdateSettings: (next: GameSettings) => void;
  onStartMission: () => void;
}

export const TitleScreen: React.FC<TitleScreenProps> = ({
  selectedMission,
  selectedDifficulty,
  settings,
  stats,
  archResult,
  onSelectMission,
  onSelectDifficulty,
  onUpdateSettings,
  onStartMission,
}) => {
  const [tab, setTab] = useState<MenuTab>('briefing');
  const [settingsRow, setSettingsRow] = useState(0);
  const gamepad = useGamepadStatus();

  const activeMission =
    MISSIONS.find((m) => m.id === selectedMission) ?? MISSIONS[0];

  const accuracy =
    stats.totalShotsFired > 0
      ? Math.round((stats.totalShotsHit / stats.totalShotsFired) * 100)
      : 100;

  const ensureMenuAudio = () => {
    novaAudio.playMenuSelect();
    novaAudio.startMenuMusic();
  };

  const switchTab = (next: MenuTab) => {
    ensureMenuAudio();
    setTab(next);
  };

  const adjustSettingRow = (row: number, dir: -1 | 1) => {
    ensureMenuAudio();
    if (row === 0) {
      const val = Math.max(0.4, Math.min(2.4, Number((settings.sensitivity + dir * 0.1).toFixed(1))));
      onUpdateSettings({ ...settings, sensitivity: val });
    } else if (row === 1) {
      const val = Math.max(
        0.4,
        Math.min(2.6, Number((settings.controllerSensitivity + dir * 0.1).toFixed(1))),
      );
      onUpdateSettings({ ...settings, controllerSensitivity: val });
    } else if (row === 2) {
      const val = Math.max(
        0.05,
        Math.min(0.35, Number((settings.controllerDeadzone + dir * 0.02).toFixed(2))),
      );
      onUpdateSettings({ ...settings, controllerDeadzone: val });
    } else if (row === 3) {
      const val = Math.max(0, Math.min(1, Number((settings.masterVolume + dir * 0.05).toFixed(2))));
      onUpdateSettings({ ...settings, masterVolume: val });
    } else if (row === 4) {
      const val = Math.max(65, Math.min(95, settings.fov + dir * 5));
      onUpdateSettings({ ...settings, fov: val });
    } else if (row === 5) {
      onUpdateSettings({ ...settings, invertY: !settings.invertY });
    }
  };

  useGamepadMenuNav(true, {
    onLB: () => {
      const idx = MENU_TABS.indexOf(tab);
      switchTab(MENU_TABS[(idx - 1 + MENU_TABS.length) % MENU_TABS.length]);
    },
    onRB: () => {
      const idx = MENU_TABS.indexOf(tab);
      switchTab(MENU_TABS[(idx + 1) % MENU_TABS.length]);
    },
    onUp: () => {
      if (tab === 'briefing') {
        ensureMenuAudio();
        const idx = MISSIONS.findIndex((m) => m.id === selectedMission);
        onSelectMission(MISSIONS[(idx - 1 + MISSIONS.length) % MISSIONS.length].id);
      } else if (tab === 'settings') {
        ensureMenuAudio();
        setSettingsRow((r) => (r - 1 + 6) % 6);
      }
    },
    onDown: () => {
      if (tab === 'briefing') {
        ensureMenuAudio();
        const idx = MISSIONS.findIndex((m) => m.id === selectedMission);
        onSelectMission(MISSIONS[(idx + 1) % MISSIONS.length].id);
      } else if (tab === 'settings') {
        ensureMenuAudio();
        setSettingsRow((r) => (r + 1) % 6);
      }
    },
    onLeft: () => {
      if (tab === 'briefing') {
        ensureMenuAudio();
        const idx = DIFFICULTIES.indexOf(selectedDifficulty);
        onSelectDifficulty(DIFFICULTIES[(idx - 1 + DIFFICULTIES.length) % DIFFICULTIES.length]);
      } else if (tab === 'settings') {
        adjustSettingRow(settingsRow, -1);
      }
    },
    onRight: () => {
      if (tab === 'briefing') {
        ensureMenuAudio();
        const idx = DIFFICULTIES.indexOf(selectedDifficulty);
        onSelectDifficulty(DIFFICULTIES[(idx + 1) % DIFFICULTIES.length]);
      } else if (tab === 'settings') {
        adjustSettingRow(settingsRow, 1);
      }
    },
    onConfirm: () => {
      if (tab === 'settings' && settingsRow === 5) {
        adjustSettingRow(5, 1);
      } else {
        novaAudio.playMenuSelect();
        onStartMission();
      }
    },
    onStart: () => {
      novaAudio.playMenuSelect();
      onStartMission();
    },
    onBack: () => {
      if (tab !== 'briefing') switchTab('briefing');
    },
  });

  return (
    <div
      className="relative flex h-full w-full flex-col overflow-y-auto bg-slate-950 text-slate-100"
      style={{
        backgroundImage:
          'linear-gradient(to bottom, rgba(2,6,23,0.78), rgba(2,6,23,0.96)), url(/textures/menu_space_bg.png)',
        backgroundSize: 'cover',
        backgroundPosition: 'center',
      }}
    >
      {/* Top Bar: Wordmark · 4 single-line links · 1 Primary CTA */}
      <header className="mx-auto flex w-full max-w-6xl items-center justify-between gap-8 border-b border-slate-800/90 px-6 py-4">
        <div className="flex items-center gap-3 shrink-0">
          <img
            src="/textures/nova_icon.png"
            alt="N.O.V.A."
            className="h-7 w-7 rounded"
          />
          <span className="font-display text-lg font-bold tracking-wider text-white whitespace-nowrap">
            N.O.V.A. HD
          </span>
        </div>

        <nav className="flex items-center gap-6 text-sm font-medium">
          {(
            [
              ['briefing', 'Select level'],
              ['arsenal', 'Weapons'],
              ['achievements', 'Achievements'],
              ['settings', 'Options'],
            ] as const
          ).map(([id, label]) => (
            <button
              key={id}
              type="button"
              onClick={() => switchTab(id)}
              className={`border-b-2 py-1 transition-colors whitespace-nowrap shrink-0 ${
                tab === id
                  ? 'border-cyan-400 text-white'
                  : 'border-transparent text-slate-400 hover:text-slate-200'
              }`}
            >
              {label}
            </button>
          ))}
        </nav>

        <div className="flex items-center gap-3 shrink-0">
          {gamepad.connected && (
            <span
              title={gamepad.label ?? 'Controller Connected'}
              className="hidden sm:inline-flex items-center gap-1.5 rounded-lg border border-cyan-500/40 bg-cyan-500/10 px-2.5 py-1.5 text-xs font-medium text-cyan-300 whitespace-nowrap"
            >
              <Gamepad2 className="h-3.5 w-3.5" />
              Controller Ready
            </span>
          )}
          <button
            type="button"
            onClick={() => {
              novaAudio.playMenuSelect();
              onStartMission();
            }}
            className="inline-flex items-center gap-2 rounded-lg bg-cyan-500 px-4 py-2 text-xs font-bold text-slate-950 transition-colors hover:bg-cyan-400 whitespace-nowrap shrink-0"
          >
            <Play className="h-3.5 w-3.5 fill-current" />
            New Game
          </button>
        </div>
      </header>

      <main className="mx-auto flex w-full max-w-6xl flex-1 flex-col justify-between gap-8 px-6 py-8">
        {tab === 'briefing' && (
          <div className="space-y-8">
            <div className="grid gap-8 lg:grid-cols-12 lg:items-stretch">
              <div className="flex flex-col justify-between lg:col-span-7">
                <div>
                  <p className="text-xs font-medium text-cyan-400">
                    {activeMission.locationName} · {activeMission.levelFile}
                  </p>
                  <h1
                    className="font-display mt-2 text-4xl font-extrabold tracking-tight text-white sm:text-5xl"
                    style={{ textWrap: 'balance' }}
                  >
                    {activeMission.title}
                  </h1>
                  <p className="mt-4 max-w-2xl text-base leading-relaxed text-slate-300">
                    {activeMission.briefing}
                  </p>
                </div>

                <div className="mt-6 space-y-4">
                  <div className="flex flex-wrap items-center gap-3">
                    <span className="text-xs font-medium text-slate-400">
                      Difficulty
                    </span>
                    <div className="flex items-center gap-1 rounded-lg border border-slate-800 bg-slate-900 p-1">
                      {(['easy', 'normal', 'hard'] as DifficultyId[]).map((diff) => (
                        <button
                          key={diff}
                          type="button"
                          onClick={() => {
                            ensureMenuAudio();
                            onSelectDifficulty(diff);
                          }}
                          className={`rounded-md px-3 py-1.5 text-xs font-semibold transition-colors whitespace-nowrap ${
                            selectedDifficulty === diff
                              ? 'bg-cyan-500 text-slate-950'
                              : 'text-slate-400 hover:text-white'
                          }`}
                        >
                          {DIFFICULTY_MULT[diff].label}
                        </button>
                      ))}
                    </div>
                  </div>

                  <p className="text-xs italic text-slate-400">
                    {COLONIAL_DIRECTIVE}
                  </p>
                </div>
              </div>

              {/* Original Levels from location_01_ship.pack & location_06_jungle.pack */}
              <div className="flex flex-col gap-3 lg:col-span-5">
                {MISSIONS.map((mission) => {
                  const selected = mission.id === selectedMission;
                  const best = stats.bestScores[mission.id] ?? 0;
                  return (
                    <button
                      key={mission.id}
                      type="button"
                      onClick={() => {
                        ensureMenuAudio();
                        onSelectMission(mission.id);
                      }}
                      className={`flex flex-col rounded-xl border p-4 text-left transition-colors ${
                        selected
                          ? 'border-cyan-400 bg-slate-900/95'
                          : 'border-slate-800 bg-slate-900/70 hover:border-slate-700 hover:bg-slate-900'
                      }`}
                    >
                      <div className="flex items-center justify-between gap-2 text-xs text-slate-400">
                        <span className="font-medium text-cyan-400">
                          {mission.chapter} · {mission.packFile}
                        </span>
                        <span className="font-mono-num">
                          Best {best.toLocaleString()}
                        </span>
                      </div>
                      <div className="font-display mt-1 text-lg font-bold text-white">
                        {mission.title}
                      </div>
                      <p className="mt-1 text-xs text-slate-400">
                        {mission.objectiveSummary}
                      </p>
                    </button>
                  );
                })}
              </div>
            </div>

            <div className="grid grid-cols-2 gap-4 border-t border-slate-800 pt-6 sm:grid-cols-4">
              <div>
                <div className="text-xs text-slate-400">Enemies killed</div>
                <div className="font-mono-num mt-1 text-2xl font-bold text-white">
                  {stats.totalKills}
                </div>
              </div>
              <div>
                <div className="text-xs text-slate-400">Headshots</div>
                <div className="font-mono-num mt-1 text-2xl font-bold text-amber-400">
                  {stats.totalHeadshots}
                </div>
              </div>
              <div>
                <div className="text-xs text-slate-400">Accuracy</div>
                <div className="font-mono-num mt-1 text-2xl font-bold text-cyan-400">
                  {accuracy}%
                </div>
              </div>
              <div>
                <div className="text-xs text-slate-400">Levels cleared</div>
                <div className="font-mono-num mt-1 text-2xl font-bold text-emerald-400">
                  {stats.missionsCleared}
                </div>
              </div>
            </div>
          </div>
        )}

        {tab === 'arsenal' && (
          <div className="space-y-6">
            <div>
              <h2 className="font-display text-2xl font-bold text-white">
                Weapons & Suit Powers
              </h2>
              <p className="mt-1 text-sm text-slate-400">
                Original weapon configurations loaded from weapon_*_config.xml. Switch with keys 1–6 or mouse wheel.
              </p>
            </div>

            <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
              {WEAPON_ORDER.map((id) => {
                const w = WEAPONS[id];
                return (
                  <div
                    key={id}
                    className="rounded-xl border border-slate-800 bg-slate-900/90 p-4"
                  >
                    <div className="flex items-center justify-between text-xs text-slate-400">
                      <span>
                        Slot {w.slot} · {w.fireMode === 'auto' ? 'Automatic' : 'Semi-Auto'}
                      </span>
                      <span className="font-mono-num text-cyan-400">
                        {w.infiniteReserve ? 'INF' : `${w.initialAmmo}/${w.maxReserve}`}
                      </span>
                    </div>
                    <h3 className="font-display mt-1.5 text-lg font-bold text-white">
                      {w.name}
                    </h3>
                    <div className="mt-3 grid grid-cols-3 gap-2 border-t border-slate-800 pt-3 text-xs">
                      <div>
                        <span className="text-slate-400">Damage</span>
                        <div className="font-mono-num font-semibold text-white">
                          {w.damage * w.pellets}
                        </div>
                      </div>
                      <div>
                        <span className="text-slate-400">{w.isEnergyPool ? 'Power' : 'Clip'}</span>
                        <div className="font-mono-num font-semibold text-white">
                          {w.magSize}
                        </div>
                      </div>
                      <div>
                        <span className="text-slate-400">Reload</span>
                        <div className="font-mono-num font-semibold text-cyan-300">
                          {(w.reloadMs / 1000).toFixed(2)}s
                        </div>
                      </div>
                    </div>
                  </div>
                );
              })}
            </div>

            <div className="grid gap-4 sm:grid-cols-2">
              <div className="rounded-xl border border-slate-800 bg-slate-900/90 p-4">
                <div className="flex items-center gap-2 text-sm font-semibold text-cyan-300">
                  <Shield className="h-4 w-4" />
                  Paralyzer [Q]
                </div>
                <p className="mt-1.5 text-xs text-slate-400">
                  Suit power that freezes nearby hostiles in stasis for 4.5 seconds.
                </p>
              </div>
              <div className="rounded-xl border border-slate-800 bg-slate-900/90 p-4">
                <div className="flex items-center gap-2 text-sm font-semibold text-amber-300">
                  <Crosshair className="h-4 w-4" />
                  Hacking Minigame [E]
                </div>
                <p className="mt-1.5 text-xs text-slate-400">
                  Power up all photon cells using mirrors and splitters without hitting red components.
                </p>
              </div>
            </div>
          </div>
        )}

        {tab === 'achievements' && (
          <div className="space-y-6">
            <div className="flex items-center justify-between">
              <div>
                <h2 className="font-display text-2xl font-bold text-white">
                  Achievements
                </h2>
                <p className="mt-1 text-sm text-slate-400">
                  Original N.O.V.A. combat milestones tracked across deployments.
                </p>
              </div>
              <div className="font-mono-num text-sm font-semibold text-cyan-300">
                {stats.unlockedAchievements.length} / {ACHIEVEMENTS.length}
              </div>
            </div>

            <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
              {ACHIEVEMENTS.map((ach) => {
                const unlocked = stats.unlockedAchievements.includes(ach.id);
                return (
                  <div
                    key={ach.id}
                    className={`rounded-xl border p-4 ${
                      unlocked
                        ? 'border-cyan-500/50 bg-slate-900/95'
                        : 'border-slate-800 bg-slate-900/50 opacity-75'
                    }`}
                  >
                    <div className="flex items-center justify-between gap-2">
                      <span className="font-display text-base font-bold text-white">
                        {ach.title}
                      </span>
                      <Trophy
                        className={`h-4 w-4 ${
                          unlocked ? 'text-amber-400' : 'text-slate-600'
                        }`}
                      />
                    </div>
                    <p className="mt-1.5 text-xs text-slate-400">
                      {ach.description}
                    </p>
                    <div className="mt-3 text-xs font-medium">
                      {unlocked ? (
                        <span className="text-emerald-400">Unlocked</span>
                      ) : (
                        <span className="text-slate-500">Locked</span>
                      )}
                    </div>
                  </div>
                );
              })}
            </div>
          </div>
        )}

        {tab === 'settings' && (
          <div className="max-w-xl space-y-6">
            <div>
              <h2 className="font-display text-2xl font-bold text-white">
                Options
              </h2>
              <p className="mt-1 text-sm text-slate-400">
                Configure mouse &amp; controller sensitivity, stick deadzone, master volume, and field of view.
              </p>
            </div>

            <div className="space-y-3 rounded-xl border border-slate-800 bg-slate-900/90 p-5">
              <div
                className={`flex items-center justify-between gap-4 rounded-lg px-2 py-1 ${
                  gamepad.connected && settingsRow === 0 ? 'bg-slate-800/80 ring-1 ring-cyan-500/50' : ''
                }`}
              >
                <label htmlFor="opt-sens" className="text-sm text-slate-200">
                  Mouse Sensitivity ({settings.sensitivity.toFixed(1)}x)
                </label>
                <input
                  id="opt-sens"
                  type="range"
                  min={0.4}
                  max={2.4}
                  step={0.1}
                  value={settings.sensitivity}
                  onChange={(e) =>
                    onUpdateSettings({
                      ...settings,
                      sensitivity: Number(e.target.value),
                    })
                  }
                  className="w-44 accent-cyan-400"
                />
              </div>

              <div
                className={`flex items-center justify-between gap-4 rounded-lg px-2 py-1 ${
                  gamepad.connected && settingsRow === 1 ? 'bg-slate-800/80 ring-1 ring-cyan-500/50' : ''
                }`}
              >
                <label htmlFor="opt-pad-sens" className="text-sm text-slate-200">
                  Controller Sensitivity ({settings.controllerSensitivity.toFixed(1)}x)
                </label>
                <input
                  id="opt-pad-sens"
                  type="range"
                  min={0.4}
                  max={2.6}
                  step={0.1}
                  value={settings.controllerSensitivity}
                  onChange={(e) =>
                    onUpdateSettings({
                      ...settings,
                      controllerSensitivity: Number(e.target.value),
                    })
                  }
                  className="w-44 accent-cyan-400"
                />
              </div>

              <div
                className={`flex items-center justify-between gap-4 rounded-lg px-2 py-1 ${
                  gamepad.connected && settingsRow === 2 ? 'bg-slate-800/80 ring-1 ring-cyan-500/50' : ''
                }`}
              >
                <label htmlFor="opt-pad-dz" className="text-sm text-slate-200">
                  Stick Deadzone ({Math.round(settings.controllerDeadzone * 100)}%)
                </label>
                <input
                  id="opt-pad-dz"
                  type="range"
                  min={0.05}
                  max={0.35}
                  step={0.02}
                  value={settings.controllerDeadzone}
                  onChange={(e) =>
                    onUpdateSettings({
                      ...settings,
                      controllerDeadzone: Number(e.target.value),
                    })
                  }
                  className="w-44 accent-cyan-400"
                />
              </div>

              <div
                className={`flex items-center justify-between gap-4 rounded-lg px-2 py-1 ${
                  gamepad.connected && settingsRow === 3 ? 'bg-slate-800/80 ring-1 ring-cyan-500/50' : ''
                }`}
              >
                <label htmlFor="opt-vol" className="text-sm text-slate-200">
                  Master Volume ({Math.round(settings.masterVolume * 100)}%)
                </label>
                <input
                  id="opt-vol"
                  type="range"
                  min={0}
                  max={1}
                  step={0.05}
                  value={settings.masterVolume}
                  onChange={(e) =>
                    onUpdateSettings({
                      ...settings,
                      masterVolume: Number(e.target.value),
                    })
                  }
                  className="w-44 accent-cyan-400"
                />
              </div>

              <div
                className={`flex items-center justify-between gap-4 rounded-lg px-2 py-1 ${
                  gamepad.connected && settingsRow === 4 ? 'bg-slate-800/80 ring-1 ring-cyan-500/50' : ''
                }`}
              >
                <label htmlFor="opt-fov" className="text-sm text-slate-200">
                  Field of View ({settings.fov} deg)
                </label>
                <input
                  id="opt-fov"
                  type="range"
                  min={65}
                  max={95}
                  step={5}
                  value={settings.fov}
                  onChange={(e) =>
                    onUpdateSettings({
                      ...settings,
                      fov: Number(e.target.value),
                    })
                  }
                  className="w-44 accent-cyan-400"
                />
              </div>

              <div
                className={`flex items-center justify-between rounded-lg border-t border-slate-800 px-2 pt-3 pb-1 ${
                  gamepad.connected && settingsRow === 5 ? 'bg-slate-800/80 ring-1 ring-cyan-500/50' : ''
                }`}
              >
                <span className="text-sm text-slate-200">Invert Y Axis</span>
                <button
                  type="button"
                  onClick={() =>
                    onUpdateSettings({ ...settings, invertY: !settings.invertY })
                  }
                  className={`rounded-lg px-3.5 py-1.5 text-xs font-semibold transition-colors ${
                    settings.invertY
                      ? 'bg-cyan-500 text-slate-950'
                      : 'border border-slate-700 bg-slate-800 text-slate-300'
                  }`}
                >
                  {settings.invertY ? 'ON' : 'OFF'}
                </button>
              </div>
            </div>

            <div className="rounded-xl border border-slate-800 bg-slate-900/90 p-4 text-xs text-slate-300 space-y-1.5">
              <div className="font-semibold text-cyan-300">Controller Layout (Gamepad)</div>
              <p className="leading-relaxed text-slate-400">
                Left Stick Move · L3 Sprint · Right Stick Aim · RT Fire · LT Scope / ADS · LB/RB Cycle Weapons · A Jump · B Paralyzer · X Reload / Hack · Y Grenade · Start Pause
              </p>
              {archResult && (
                <p className="pt-1 text-slate-500">
                  Target Architecture: ARM64 (aarch64) · Host: {archResult.architecture} ({ENFORCE_ARM64_LOCK ? 'Locked' : 'Unlocked for testing'})
                </p>
              )}
            </div>
          </div>
        )}

        <footer className="flex flex-wrap items-center justify-between gap-4 border-t border-slate-800 pt-4 text-xs text-slate-500">
          <span>N.O.V.A. Near Orbit Vanguard Alliance HD 1.1.4</span>
          <span>
            {gamepad.connected
              ? 'D-Pad Navigate · LB/RB Tabs · A / Start Launch · LT/RT Aim & Fire'
              : 'WASD Move · Mouse Aim · 1-6 Weapons · Q Paralyzer · G Grenade · E Hack'}
          </span>
        </footer>
      </main>
    </div>
  );
};
