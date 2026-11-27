import React, { useState } from 'react';
import { Award, ChevronRight, RotateCcw, Shield, Trophy } from 'lucide-react';
import { useGamepadMenuNav } from '../game/gamepad';
import type { GameSettings, HudSnapshot } from '../game/types';

interface PauseModalProps {
  hud: HudSnapshot;
  missionTitle: string;
  nextMissionTitle?: string;
  settings: GameSettings;
  onUpdateSettings: (next: GameSettings) => void;
  onResume: () => void;
  onRestart: () => void;
  onNextMission?: () => void;
  onExitToMenu: () => void;
}

export const PauseModal: React.FC<PauseModalProps> = ({
  hud,
  missionTitle,
  nextMissionTitle,
  settings,
  onUpdateSettings,
  onResume,
  onRestart,
  onNextMission,
  onExitToMenu,
}) => {
  const isFinished = hud.status === 'victory' || hud.status === 'defeat';
  const hasNext = hud.status === 'victory' && Boolean(onNextMission);
  const accuracy =
    hud.shotsFired > 0 ? Math.round((hud.shotsHit / hud.shotsFired) * 100) : 100;

  // Pause rows: 0=ControllerSens, 1=MouseSens, 2=Deadzone, 3=Volume, 4=InvertY, 5=Resume, 6=Restart, 7=BackToMenu
  // Finished rows: 0=Next(if hasNext) or Restart, 1=Restart/BackToMenu, 2=BackToMenu(if hasNext)
  const [focusIdx, setFocusIdx] = useState(isFinished ? 0 : 5);
  const maxIdx = isFinished ? (hasNext ? 2 : 1) : 7;

  const adjustSlider = (row: number, dir: -1 | 1) => {
    if (row === 0) {
      const val = Math.max(
        0.4,
        Math.min(2.6, Number((settings.controllerSensitivity + dir * 0.1).toFixed(1))),
      );
      onUpdateSettings({ ...settings, controllerSensitivity: val });
    } else if (row === 1) {
      const val = Math.max(0.4, Math.min(2.4, Number((settings.sensitivity + dir * 0.1).toFixed(1))));
      onUpdateSettings({ ...settings, sensitivity: val });
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
      onUpdateSettings({ ...settings, invertY: !settings.invertY });
    }
  };

  useGamepadMenuNav(true, {
    onUp: () => setFocusIdx((i) => (i - 1 + (maxIdx + 1)) % (maxIdx + 1)),
    onDown: () => setFocusIdx((i) => (i + 1) % (maxIdx + 1)),
    onLeft: () => {
      if (!isFinished && focusIdx <= 4) adjustSlider(focusIdx, -1);
      else setFocusIdx((i) => (i - 1 + (maxIdx + 1)) % (maxIdx + 1));
    },
    onRight: () => {
      if (!isFinished && focusIdx <= 4) adjustSlider(focusIdx, 1);
      else setFocusIdx((i) => (i + 1) % (maxIdx + 1));
    },
    onConfirm: () => {
      if (isFinished) {
        if (hasNext) {
          if (focusIdx === 0) onNextMission?.();
          else if (focusIdx === 1) onRestart();
          else onExitToMenu();
        } else {
          if (focusIdx === 0) onRestart();
          else onExitToMenu();
        }
        return;
      }
      if (focusIdx === 4) adjustSlider(4, 1);
      else if (focusIdx === 5) onResume();
      else if (focusIdx === 6) onRestart();
      else if (focusIdx === 7) onExitToMenu();
    },
    onBack: () => {
      if (!isFinished) onResume();
      else onExitToMenu();
    },
    onStart: () => {
      if (!isFinished) onResume();
    },
  });

  const ringClass = (idx: number) =>
    hud.gamepadConnected && focusIdx === idx ? 'ring-2 ring-cyan-400' : '';

  return (
    <div className="fixed inset-0 z-40 flex items-center justify-center bg-slate-950/90 p-4">
      <div className="w-full max-w-lg rounded-xl border border-slate-700 bg-slate-900 p-6 shadow-2xl">
        <div className="border-b border-slate-800 pb-4">
          <p className="text-xs font-medium text-cyan-400">{missionTitle}</p>
          <h2 className="font-display mt-1 text-2xl font-bold text-white">
            {hud.status === 'victory'
              ? 'CONGRATULATIONS!'
              : hud.status === 'defeat'
                ? 'Mission Failed'
                : 'Options'}
          </h2>
        </div>

        <div className="mt-4 grid grid-cols-2 gap-3 sm:grid-cols-4">
          <div className="rounded-lg border border-slate-800 bg-slate-950 p-3">
            <div className="text-xs text-slate-400">Score</div>
            <div className="font-mono-num mt-1 text-lg font-bold text-cyan-300">
              {hud.score.toLocaleString()}
            </div>
          </div>
          <div className="rounded-lg border border-slate-800 bg-slate-950 p-3">
            <div className="text-xs text-slate-400">Enemies killed</div>
            <div className="font-mono-num mt-1 text-lg font-bold text-white">
              {hud.kills}
            </div>
          </div>
          <div className="rounded-lg border border-slate-800 bg-slate-950 p-3">
            <div className="text-xs text-slate-400">Headshots</div>
            <div className="font-mono-num mt-1 text-lg font-bold text-amber-300">
              {hud.headshots}
            </div>
          </div>
          <div className="rounded-lg border border-slate-800 bg-slate-950 p-3">
            <div className="text-xs text-slate-400">Accuracy</div>
            <div className="font-mono-num mt-1 text-lg font-bold text-emerald-300">
              {accuracy}%
            </div>
          </div>
        </div>

        {!isFinished && (
          <div className="mt-5 space-y-2.5 border-t border-slate-800 pt-4">
            <div className={`flex items-center justify-between gap-4 rounded-lg px-2 py-1 ${ringClass(0)}`}>
              <label htmlFor="pause-pad-sens" className="text-sm text-slate-300">
                Controller Sensitivity ({settings.controllerSensitivity.toFixed(1)}x)
              </label>
              <input
                id="pause-pad-sens"
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
                className="w-40 accent-cyan-400"
              />
            </div>

            <div className={`flex items-center justify-between gap-4 rounded-lg px-2 py-1 ${ringClass(1)}`}>
              <label htmlFor="pause-sens" className="text-sm text-slate-300">
                Mouse Sensitivity ({settings.sensitivity.toFixed(1)}x)
              </label>
              <input
                id="pause-sens"
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
                className="w-40 accent-cyan-400"
              />
            </div>

            <div className={`flex items-center justify-between gap-4 rounded-lg px-2 py-1 ${ringClass(2)}`}>
              <label htmlFor="pause-pad-dz" className="text-sm text-slate-300">
                Stick Deadzone ({Math.round(settings.controllerDeadzone * 100)}%)
              </label>
              <input
                id="pause-pad-dz"
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
                className="w-40 accent-cyan-400"
              />
            </div>

            <div className={`flex items-center justify-between gap-4 rounded-lg px-2 py-1 ${ringClass(3)}`}>
              <label htmlFor="pause-vol" className="text-sm text-slate-300">
                Master Volume ({Math.round(settings.masterVolume * 100)}%)
              </label>
              <input
                id="pause-vol"
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
                className="w-40 accent-cyan-400"
              />
            </div>

            <div className={`flex items-center justify-between rounded-lg px-2 py-1 ${ringClass(4)}`}>
              <span className="text-sm text-slate-300">Invert Y Axis</span>
              <button
                type="button"
                onClick={() =>
                  onUpdateSettings({ ...settings, invertY: !settings.invertY })
                }
                className={`rounded-lg px-3 py-1.5 text-xs font-semibold transition-colors ${
                  settings.invertY
                    ? 'bg-cyan-500 text-slate-950'
                    : 'border border-slate-700 bg-slate-800 text-slate-300'
                }`}
              >
                {settings.invertY ? 'ON' : 'OFF'}
              </button>
            </div>

            <div className="rounded-lg border border-slate-800 bg-slate-950 p-3 text-xs text-slate-400">
              Controller: LS Move · L3 Sprint · RS Aim · RT Fire · LT Scope/ADS · LB/RB Weapons · A Jump · B Paralyzer · X Reload/Hack · Y Grenade
            </div>
          </div>
        )}

        {hud.status === 'victory' && (
          <div className="mt-4 flex items-center gap-3 rounded-lg border border-emerald-500/30 bg-emerald-500/10 p-3 text-sm text-emerald-200">
            <Trophy className="h-5 w-5 shrink-0 text-emerald-400" />
            <span>
              {nextMissionTitle
                ? `Level cleared. Next sector ready: ${nextMissionTitle}`
                : 'Campaign cleared! All sectors secured and stats saved.'}
            </span>
          </div>
        )}

        {hud.status === 'defeat' && (
          <div className="mt-4 flex items-center gap-3 rounded-lg border border-red-500/30 bg-red-500/10 p-3 text-sm text-red-200">
            <Shield className="h-5 w-5 shrink-0 text-red-400" />
            <span>
              Shield and health depleted. Restart level or return to menu.
            </span>
          </div>
        )}

        <div className="mt-6 flex flex-wrap items-center justify-end gap-3 border-t border-slate-800 pt-4">
          <button
            type="button"
            onClick={onExitToMenu}
            className={`rounded-lg border border-slate-700 bg-slate-800 px-4 py-2 text-xs font-semibold text-slate-200 transition-colors hover:bg-slate-700 whitespace-nowrap ${
              isFinished ? ringClass(hasNext ? 2 : 1) : ringClass(7)
            }`}
          >
            Back to menu
          </button>
          <button
            type="button"
            onClick={onRestart}
            className={`inline-flex items-center gap-1.5 rounded-lg border border-slate-700 bg-slate-800 px-4 py-2 text-xs font-semibold text-slate-200 transition-colors hover:bg-slate-700 whitespace-nowrap ${
              isFinished ? ringClass(hasNext ? 1 : 0) : ringClass(6)
            }`}
          >
            <RotateCcw className="h-3.5 w-3.5" />
            Restart Level
          </button>
          {hasNext && (
            <button
              type="button"
              onClick={onNextMission}
              className={`inline-flex items-center gap-1.5 rounded-lg bg-cyan-500 px-5 py-2 text-xs font-semibold text-slate-950 transition-colors hover:bg-cyan-400 whitespace-nowrap ${ringClass(0)}`}
            >
              Next Level
              <ChevronRight className="h-3.5 w-3.5" />
            </button>
          )}
          {!isFinished && (
            <button
              type="button"
              onClick={onResume}
              className={`inline-flex items-center gap-1.5 rounded-lg bg-cyan-500 px-5 py-2 text-xs font-semibold text-slate-950 transition-colors hover:bg-cyan-400 whitespace-nowrap ${ringClass(5)}`}
            >
              <Award className="h-3.5 w-3.5" />
              Resume
            </button>
          )}
        </div>
      </div>
    </div>
  );
};
