import React from 'react';
import { Cpu, ShieldAlert } from 'lucide-react';
import type { ArchCheckResult } from '../game/archGuard';

interface Arm64GateProps {
  checking: boolean;
  result: ArchCheckResult | null;
}

export const Arm64Gate: React.FC<Arm64GateProps> = ({ checking, result }) => {
  return (
    <div
      className="flex h-full w-full items-center justify-center bg-slate-950 p-6 text-slate-100"
      style={{
        backgroundImage:
          'linear-gradient(to bottom, rgba(2,6,23,0.84), rgba(2,6,23,0.97)), url(/textures/menu_space_bg.png)',
        backgroundSize: 'cover',
        backgroundPosition: 'center',
      }}
    >
      <div className="w-full max-w-lg rounded-xl border border-red-500/40 bg-slate-900/95 p-6 shadow-2xl">
        <div className="flex items-center gap-3 border-b border-slate-800 pb-4">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg border border-red-500/40 bg-red-500/10 text-red-400">
            {checking ? (
              <Cpu className="h-5 w-5 animate-pulse text-cyan-400" />
            ) : (
              <ShieldAlert className="h-5 w-5" />
            )}
          </div>
          <div>
            <p className="text-xs font-medium tracking-wider text-cyan-400">
              N.O.V.A. HD · ARM64 HARDWARE LOCK
            </p>
            <h1 className="font-display mt-0.5 text-xl font-bold text-white">
              {checking ? 'Verifying Processor Architecture…' : 'ARM64 Architecture Required'}
            </h1>
          </div>
        </div>

        <p className="mt-4 text-sm leading-relaxed text-slate-300">
          {checking
            ? 'Checking host CPU architecture for 64-bit ARM (arm64 / aarch64) compatibility.'
            : result?.reason ??
              'This application is restricted to 64-bit ARM (arm64 / aarch64) processors.'}
        </p>

        {!checking && result && (
          <div className="mt-5 grid grid-cols-2 gap-3 rounded-lg border border-slate-800 bg-slate-950 p-4 text-xs">
            <div>
              <span className="text-slate-400">Required Target</span>
              <div className="font-mono-num mt-1 font-semibold text-cyan-300">
                arm64 / aarch64 (64-bit)
              </div>
            </div>
            <div>
              <span className="text-slate-400">Detected CPU</span>
              <div className="font-mono-num mt-1 font-semibold text-red-400">
                {result.architecture}
              </div>
            </div>
            <div>
              <span className="text-slate-400">Platform</span>
              <div className="font-mono-num mt-1 text-slate-200">
                {result.platform}
              </div>
            </div>
            <div>
              <span className="text-slate-400">Supported Hardware</span>
              <div className="mt-1 text-slate-200">
                ARM64 Android, Apple Silicon, ARM64 Linux/Win
              </div>
            </div>
          </div>
        )}
      </div>
    </div>
  );
};
