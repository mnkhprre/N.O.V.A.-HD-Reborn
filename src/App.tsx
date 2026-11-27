import { useEffect, useRef, useState } from 'react';
import { Arm64Gate } from './components/Arm64Gate';
import { GameHUD } from './components/GameHUD';
import { PauseModal } from './components/PauseModal';
import { PhotonHackModal } from './components/PhotonHackModal';
import { TitleScreen } from './components/TitleScreen';
import {
  checkArm64Architecture,
  shouldEnforceArm64Lock,
  type ArchCheckResult,
} from './game/archGuard';
import { novaAudio } from './game/audio';
import {
  MISSIONS,
  loadCareerStats,
  loadSettings,
  saveCareerStats,
  saveSettings,
} from './game/data';
import { NovaEngine } from './game/engine';
import type {
  CareerStats,
  DifficultyId,
  GameSettings,
  HudSnapshot,
  MissionId,
  WeaponId,
} from './game/types';

function evaluateAchievements(next: CareerStats): string[] {
  const unlocked = new Set(next.unlockedAchievements);
  if (next.pistolKills >= 20) unlocked.add('duelist');
  if (next.totalHeadshots >= 20) unlocked.add('smooth_assassin');
  if (next.paralyzedEnemies >= 20) unlocked.add('paralyzer');
  if (next.hacksCompleted >= 3) unlocked.add('hacker');
  if (next.grenadeTripleKills >= 1) unlocked.add('short_fused');
  if (next.missionsCleared >= 1) unlocked.add('vanguard');
  return Array.from(unlocked);
}

export function App() {
  const [archChecking, setArchChecking] = useState(true);
  const [archResult, setArchResult] = useState<ArchCheckResult | null>(null);
  const [screen, setScreen] = useState<'menu' | 'playing'>('menu');
  const [missionId, setMissionId] = useState<MissionId>('ship_l1');
  const [difficulty, setDifficulty] = useState<DifficultyId>('normal');
  const [runKey, setRunKey] = useState(0);

  const [settings, setSettings] = useState<GameSettings>(() => {
    const s = loadSettings();
    novaAudio.setVolume(s.masterVolume);
    return s;
  });
  const [stats, setStats] = useState<CareerStats>(() => loadCareerStats());

  const [hud, setHud] = useState<HudSnapshot | null>(null);
  const [hackingState, setHackingState] = useState<{
    terminalId: string;
    puzzleId: string;
  } | null>(null);
  const [contextLost, setContextLost] = useState(false);

  const mountRef = useRef<HTMLDivElement | null>(null);
  const engineRef = useRef<NovaEngine | null>(null);
  const settingsRef = useRef(settings);
  settingsRef.current = settings;

  useEffect(() => {
    let active = true;
    void checkArm64Architecture().then((res) => {
      if (!active) return;
      setArchResult(res);
      setArchChecking(false);
    });
    return () => {
      active = false;
    };
  }, []);

  const handleUpdateSettings = (next: GameSettings) => {
    setSettings(next);
    saveSettings(next);
    engineRef.current?.updateSettings(next);
  };

  const enforceArm64 = shouldEnforceArm64Lock();
  const isBlockedByArch = enforceArm64 && (archChecking || !archResult?.allowed);

  useEffect(() => {
    if (isBlockedByArch) return;
    if (screen !== 'playing') return;
    const container = mountRef.current;
    if (!container) return;

    const engine = new NovaEngine(
      container,
      missionId,
      difficulty,
      settingsRef.current,
      {
        onHudUpdate: (snap) => setHud(snap),
        onStartHack: (terminalId, puzzleId) =>
          setHackingState({ terminalId, puzzleId }),
        onContextLost: (lost) => setContextLost(lost),
        onParalyzedEnemies: (count) => {
          setStats((prev) => {
            const updated: CareerStats = {
              ...prev,
              paralyzedEnemies: prev.paralyzedEnemies + count,
            };
            updated.unlockedAchievements = evaluateAchievements(updated);
            saveCareerStats(updated);
            return updated;
          });
        },
        onGrenadeTripleKill: () => {
          setStats((prev) => {
            const updated: CareerStats = {
              ...prev,
              grenadeTripleKills: prev.grenadeTripleKills + 1,
            };
            updated.unlockedAchievements = evaluateAchievements(updated);
            saveCareerStats(updated);
            return updated;
          });
        },
        onMissionComplete: (snap, pistolKills) => {
          setStats((prev) => {
            const updated: CareerStats = {
              ...prev,
              totalKills: prev.totalKills + snap.kills,
              totalHeadshots: prev.totalHeadshots + snap.headshots,
              totalShotsFired: prev.totalShotsFired + snap.shotsFired,
              totalShotsHit: prev.totalShotsHit + snap.shotsHit,
              pistolKills: prev.pistolKills + pistolKills,
              missionsCleared: prev.missionsCleared + 1,
              bestScores: {
                ...prev.bestScores,
                [missionId]: Math.max(prev.bestScores[missionId] ?? 0, snap.score),
              },
            };
            updated.unlockedAchievements = evaluateAchievements(updated);
            saveCareerStats(updated);
            return updated;
          });
        },
        onPlayerDefeat: (snap) => {
          setStats((prev) => {
            const updated: CareerStats = {
              ...prev,
              totalKills: prev.totalKills + snap.kills,
              totalHeadshots: prev.totalHeadshots + snap.headshots,
              totalShotsFired: prev.totalShotsFired + snap.shotsFired,
              totalShotsHit: prev.totalShotsHit + snap.shotsHit,
            };
            updated.unlockedAchievements = evaluateAchievements(updated);
            saveCareerStats(updated);
            return updated;
          });
        },
      },
    );
    engineRef.current = engine;

    return () => {
      engine.dispose();
      engineRef.current = null;
      setHud(null);
      setHackingState(null);
      setContextLost(false);
    };
  }, [isBlockedByArch, screen, missionId, difficulty, runKey]);

  const activeMissionIndex = MISSIONS.findIndex((m) => m.id === missionId);
  const activeMission = MISSIONS[activeMissionIndex] ?? MISSIONS[0];
  const nextMission =
    activeMissionIndex >= 0 && activeMissionIndex + 1 < MISSIONS.length
      ? MISSIONS[activeMissionIndex + 1]
      : null;

  if (isBlockedByArch) {
    return <Arm64Gate checking={archChecking} result={archResult} />;
  }

  if (screen === 'menu') {
    return (
      <TitleScreen
        selectedMission={missionId}
        selectedDifficulty={difficulty}
        settings={settings}
        stats={stats}
        archResult={archResult}
        onSelectMission={setMissionId}
        onSelectDifficulty={setDifficulty}
        onUpdateSettings={handleUpdateSettings}
        onStartMission={() => {
          setRunKey((k) => k + 1);
          setScreen('playing');
        }}
      />
    );
  }

  return (
    <div className="relative h-full w-full overflow-hidden bg-slate-950">
      <div ref={mountRef} className="h-full w-full" />

      {contextLost && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-slate-950/95 p-6 text-center">
          <div className="max-w-md rounded-xl border border-slate-800 bg-slate-900 p-6">
            <h2 className="font-display text-xl font-bold text-white">
              WebGL Context Interrupted
            </h2>
            <p className="mt-2 text-sm text-slate-400">
              Graphics context was suspended by the browser. Click below to reinitialize.
            </p>
            <button
              type="button"
              onClick={() => setRunKey((k) => k + 1)}
              className="mt-4 rounded-lg bg-cyan-500 px-4 py-2 text-xs font-semibold text-slate-950"
            >
              Restart Level
            </button>
          </div>
        </div>
      )}

      {hud && (
        <GameHUD
          hud={hud}
          missionTitle={activeMission.title}
          onPause={() => engineRef.current?.setPaused(true)}
          onSelectWeapon={(w: WeaponId) => engineRef.current?.selectWeapon(w)}
          onLockPointer={() => engineRef.current?.requestPointerLock()}
        />
      )}

      {hackingState && (
        <PhotonHackModal
          terminalLabel={hud?.nearTerminalLabel ?? 'Circuit Terminal'}
          puzzleId={hackingState.puzzleId}
          onComplete={(success) => {
            setHackingState(null);
            if (success) {
              setStats((prev) => {
                const updated: CareerStats = {
                  ...prev,
                  hacksCompleted: prev.hacksCompleted + 1,
                };
                updated.unlockedAchievements = evaluateAchievements(updated);
                saveCareerStats(updated);
                return updated;
              });
            }
            engineRef.current?.completeHack(success);
          }}
        />
      )}

      {hud && (hud.status === 'paused' || hud.status === 'victory' || hud.status === 'defeat') && (
        <PauseModal
          hud={hud}
          missionTitle={`${activeMission.chapter} · ${activeMission.title}`}
          nextMissionTitle={nextMission ? `${nextMission.chapter} · ${nextMission.title}` : undefined}
          settings={settings}
          onUpdateSettings={handleUpdateSettings}
          onResume={() => engineRef.current?.setPaused(false)}
          onRestart={() => setRunKey((k) => k + 1)}
          onNextMission={
            nextMission
              ? () => {
                  setMissionId(nextMission.id);
                  setRunKey((k) => k + 1);
                }
              : undefined
          }
          onExitToMenu={() => {
            novaAudio.startMenuMusic();
            setScreen('menu');
          }}
        />
      )}
    </div>
  );
}

export default App;
