import React from 'react';
import { Crosshair, Gamepad2, Pause, Shield, Sparkles, Terminal } from 'lucide-react';
import { WEAPONS, WEAPON_ORDER } from '../game/data';
import type { HudSnapshot, WeaponId } from '../game/types';

interface GameHUDProps {
  hud: HudSnapshot;
  missionTitle: string;
  onPause: () => void;
  onSelectWeapon: (id: WeaponId) => void;
  onLockPointer: () => void;
}

function formatClock(sec: number): string {
  const m = Math.floor(sec / 60);
  const s = sec % 60;
  return `${String(m).padStart(2, '0')}:${String(s).padStart(2, '0')}`;
}

export const GameHUD: React.FC<GameHUDProps> = ({
  hud,
  missionTitle,
  onPause,
  onSelectWeapon,
  onLockPointer,
}) => {
  const weapon = WEAPONS[hud.activeWeapon];
  const shieldCritical = hud.shield <= 20;
  const accuracy =
    hud.shotsFired > 0 ? Math.round((hud.shotsHit / hud.shotsFired) * 100) : 100;

  return (
    <div className="pointer-events-none fixed inset-0 z-20 overflow-hidden">
      {hud.damageFlash > 0.02 && (
        <div
          className="pointer-events-none absolute inset-0"
          style={{
            boxShadow: `inset 0 0 110px rgba(239, 68, 68, ${hud.damageFlash * 0.65})`,
          }}
        />
      )}

      {hud.paralyzerActive && (
        <div
          className="pointer-events-none absolute inset-0"
          style={{
            boxShadow: 'inset 0 0 90px rgba(6, 182, 212, 0.35)',
          }}
        />
      )}

      {hud.isScoped && (
        <div className="pointer-events-none absolute inset-0 flex items-center justify-center bg-slate-950/70">
          <div className="relative h-[78vh] w-[78vh] max-h-[640px] max-w-[640px] rounded-full border-2 border-cyan-400/70 bg-transparent shadow-[0_0_0_9999px_rgba(2,6,23,0.92)]">
            <div className="absolute inset-x-0 top-1/2 h-px bg-cyan-400/60" />
            <div className="absolute inset-y-0 left-1/2 w-px bg-cyan-400/60" />
            <div className="absolute left-1/2 top-1/2 h-3 w-3 -translate-x-1/2 -translate-y-1/2 rounded-full border border-cyan-300" />
            <span className="font-mono-num absolute bottom-6 left-1/2 -translate-x-1/2 text-xs text-cyan-300">
              SNIPER OPTIC
            </span>
          </div>
        </div>
      )}

      {/* Top Bar: Left Objective · Center Pause · Right Radar */}
      <div className="flex items-start justify-between p-4 sm:p-5">
        <div className="rounded-lg border border-cyan-500/25 bg-slate-950/85 px-4 py-2.5">
          <div className="flex items-center gap-2 text-xs text-cyan-400">
            <span className="font-display font-semibold">{missionTitle}</span>
            <span aria-hidden="true">·</span>
            <span className="font-mono-num">{formatClock(hud.elapsedSeconds)}</span>
          </div>
          <div className="mt-1 flex items-center gap-3 text-sm font-semibold text-white">
            <span>{hud.waveLabel}</span>
            <span className="font-mono-num text-xs text-amber-400">
              Hostiles: {hud.enemiesRemaining}
            </span>
          </div>
          <div className="mt-0.5 flex items-center gap-3 text-xs text-slate-400 font-mono-num">
            <span>Score {hud.score.toLocaleString()}</span>
            <span>·</span>
            <span>Accuracy {accuracy}%</span>
          </div>
        </div>

        <div className="pointer-events-auto flex flex-col items-center gap-2">
          <button
            type="button"
            onClick={onPause}
            className="inline-flex items-center gap-1.5 rounded-lg border border-slate-700 bg-slate-950/85 px-3 py-1.5 text-xs font-medium text-slate-200 transition-colors hover:border-cyan-500/50 hover:text-white whitespace-nowrap"
          >
            <Pause className="h-3.5 w-3.5" />
            {hud.gamepadConnected ? 'Menu (Start / Esc)' : 'Menu (Esc)'}
          </button>

          {hud.gamepadConnected ? (
            <div className="inline-flex items-center gap-1.5 rounded-lg border border-cyan-500/35 bg-slate-950/85 px-3 py-1 text-xs font-medium text-cyan-300 whitespace-nowrap">
              <Gamepad2 className="h-3.5 w-3.5" />
              <span>{hud.gamepadLabel ?? 'Controller Active'}</span>
            </div>
          ) : (
            !hud.pointerLocked &&
            hud.status === 'playing' && (
              <button
                type="button"
                onClick={onLockPointer}
                className="rounded-lg border border-cyan-500/40 bg-slate-950/90 px-3 py-1.5 text-xs font-medium text-cyan-300 transition-colors hover:bg-cyan-500/20 whitespace-nowrap"
              >
                Click viewport to lock mouse aim (or drag to look)
              </button>
            )
          )}
        </div>

        {/* Tactical Radar Compass */}
        <div className="relative h-28 w-28 rounded-full border border-cyan-500/35 bg-slate-950/85">
          <div className="absolute inset-3 rounded-full border border-cyan-500/15" />
          <div className="absolute inset-x-0 top-1/2 h-px bg-cyan-500/15" />
          <div className="absolute inset-y-0 left-1/2 w-px bg-cyan-500/15" />
          <div className="absolute left-1/2 top-1/2 h-2 w-2 -translate-x-1/2 -translate-y-1/2 rounded-full bg-cyan-400" />
          {hud.radarBlips.map((b, i) => {
            const cos = Math.cos(hud.playerYaw);
            const sin = Math.sin(hud.playerYaw);
            const rx = b.dx * cos - b.dz * sin;
            const rz = b.dx * sin + b.dz * cos;
            const scale = 1.45;
            const px = Math.max(-44, Math.min(44, rx * scale));
            const py = Math.max(-44, Math.min(44, rz * scale));
            const colorClass =
              b.kind === 'terminal'
                ? 'bg-cyan-300 rotate-45 rounded-none'
                : b.kind === 'daemon'
                  ? 'bg-amber-400 rounded-full scale-125'
                  : 'bg-red-500 rounded-full';

            return (
              <span
                key={i}
                className={`absolute left-1/2 top-1/2 h-2 w-2 -translate-x-1/2 -translate-y-1/2 ${colorClass}`}
                style={{
                  transform: `translate(calc(-50% + ${px}px), calc(-50% + ${py}px))`,
                }}
              />
            );
          })}
        </div>
      </div>

      {!hud.isScoped && (
        <div className="pointer-events-none absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2">
          <div className="relative flex items-center justify-center">
            <span className="h-1 w-1 rounded-full bg-cyan-300" />
            <span className="absolute -top-3 h-2 w-0.5 bg-cyan-400/80" />
            <span className="absolute -bottom-3 h-2 w-0.5 bg-cyan-400/80" />
            <span className="absolute -left-3 h-0.5 w-2 bg-cyan-400/80" />
            <span className="absolute -right-3 h-0.5 w-2 bg-cyan-400/80" />
          </div>
        </div>
      )}

      {hud.hitmarker !== 'none' && (
        <div
          key={hud.hitmarkerSeq}
          className="animate-hitmarker pointer-events-none absolute left-1/2 top-1/2"
        >
          <Crosshair
            className={`h-7 w-7 rotate-45 ${
              hud.hitmarker === 'head' ? 'text-red-400' : 'text-white'
            }`}
          />
        </div>
      )}

      <div className="pointer-events-none absolute inset-x-0 top-24 flex flex-col items-center gap-2">
        {hud.toast && (
          <div className="rounded-lg border border-cyan-500/40 bg-slate-950/90 px-4 py-1.5 text-xs font-semibold tracking-wide text-cyan-200">
            {hud.toast}
          </div>
        )}
        {hud.doubleDamageRemaining > 0 && (
          <div className="inline-flex items-center gap-1.5 rounded-lg border border-amber-500/50 bg-slate-950/90 px-3 py-1 text-xs font-semibold text-amber-300 font-mono-num">
            <Sparkles className="h-3.5 w-3.5" />
            Increased Damage {hud.doubleDamageRemaining}s
          </div>
        )}
      </div>

      {hud.nearTerminalId && (
        <div className="pointer-events-none absolute bottom-32 left-1/2 -translate-x-1/2">
          <div className="inline-flex items-center gap-2 rounded-lg border border-cyan-400/60 bg-slate-950/92 px-4 py-2 text-sm font-semibold text-cyan-200">
            <Terminal className="h-4 w-4 text-cyan-400" />
            <span>
              Press {hud.gamepadConnected ? '[X] / [E]' : '[E]'} to Hack {hud.nearTerminalLabel}
            </span>
          </div>
        </div>
      )}

      {/* Bottom HUD */}
      <div className="absolute inset-x-0 bottom-0 flex flex-wrap items-end justify-between gap-4 p-4 sm:p-5">
        <div className="w-64 rounded-lg border border-slate-800 bg-slate-950/88 p-3.5">
          <div className="flex items-center justify-between text-xs font-medium">
            <span className="inline-flex items-center gap-1.5 text-cyan-300">
              <Shield className="h-3.5 w-3.5" />
              Shield
            </span>
            <span
              className={`font-mono-num font-bold ${
                shieldCritical ? 'text-red-400 animate-shield-critical' : 'text-cyan-300'
              }`}
            >
              {hud.shield}
            </span>
          </div>
          <div className="mt-1 h-2 w-full overflow-hidden rounded-sm bg-slate-800">
            <div
              className={`h-full transition-all duration-150 ${
                shieldCritical ? 'bg-red-500' : 'bg-cyan-400'
              }`}
              style={{ width: `${Math.max(0, (hud.shield / hud.maxShield) * 100)}%` }}
            />
          </div>

          <div className="mt-2.5 flex items-center justify-between text-xs font-medium">
            <span className="text-emerald-300">Health</span>
            <span className="font-mono-num font-bold text-emerald-300">
              {hud.health}
            </span>
          </div>
          <div className="mt-1 h-2 w-full overflow-hidden rounded-sm bg-slate-800">
            <div
              className="h-full bg-emerald-400 transition-all duration-150"
              style={{ width: `${Math.max(0, (hud.health / hud.maxHealth) * 100)}%` }}
            />
          </div>

          <div className="mt-3 flex items-center justify-between border-t border-slate-800 pt-2 text-xs text-slate-300">
            <span>
              {hud.gamepadConnected ? '[B]' : '[Q]'} Paralyzer:{' '}
              <strong className="font-mono-num text-cyan-300">
                {hud.suitEnergy}%
              </strong>
            </span>
            <span>
              {hud.gamepadConnected ? '[Y]' : '[G]'} Grenade:{' '}
              <strong className="font-mono-num text-amber-300">
                {hud.grenades}
              </strong>
            </span>
          </div>
        </div>

        <div className="flex flex-col items-end gap-2">
          <div className="pointer-events-auto flex items-center gap-1 rounded-lg border border-slate-800 bg-slate-950/88 p-1">
            {WEAPON_ORDER.map((id) => {
              const w = WEAPONS[id];
              const active = hud.activeWeapon === id;
              return (
                <button
                  key={id}
                  type="button"
                  onClick={() => onSelectWeapon(id)}
                  className={`rounded px-2.5 py-1 text-xs font-semibold transition-colors whitespace-nowrap ${
                    active
                      ? 'bg-cyan-500 text-slate-950'
                      : 'text-slate-400 hover:bg-slate-800 hover:text-white'
                  }`}
                >
                  {w.slot}. {w.name.split(' ')[0]}
                </button>
              );
            })}
          </div>

          <div className="flex items-baseline gap-4 rounded-lg border border-slate-800 bg-slate-950/88 px-4 py-2.5">
            <div>
              <div className="text-xs font-medium text-slate-400">
                {weapon.fireMode === 'auto' ? 'Automatic' : 'Semi-Auto'}
                {weapon.id === 'sniper' &&
                  (hud.gamepadConnected ? ' · Hold LT Zoom' : ' · Right-Click Zoom')}
                {weapon.id !== 'sniper' && hud.gamepadConnected && ' · LB/RB Switch'}
              </div>
              <div className="font-display text-sm font-bold text-white">
                {hud.isReloading ? 'Reloading...' : weapon.name}
              </div>
            </div>

            {weapon.isEnergyPool ? (
              <div className="font-mono-num text-right">
                <span className="text-2xl font-bold text-emerald-300">
                  {hud.plasmaPower}
                </span>
                <span className="mx-1 text-slate-500">/</span>
                <span className="text-sm text-slate-300">{hud.maxPlasmaPower}</span>
              </div>
            ) : (
              <div className="font-mono-num text-right">
                <span className="text-2xl font-bold text-cyan-300">
                  {hud.magAmmo[hud.activeWeapon]}
                </span>
                <span className="mx-1 text-slate-500">/</span>
                <span className="text-sm text-slate-300">
                  {weapon.infiniteReserve ? 'INF' : hud.reserveAmmo[hud.activeWeapon]}
                </span>
              </div>
            )}
          </div>
        </div>
      </div>
    </div>
  );
};
