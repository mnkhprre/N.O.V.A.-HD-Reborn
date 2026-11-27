import React, { useMemo, useState } from 'react';
import { CheckCircle2, RotateCw, ShieldAlert, Square, X, Zap } from 'lucide-react';
import { novaAudio } from '../game/audio';
import { HACKING_PUZZLES } from '../game/data';
import { useGamepadMenuNav, useGamepadStatus } from '../game/gamepad';
import type { HackDir } from '../game/types';

type BoardCellKind =
  | 'empty'
  | 'gen'
  | 'goal'
  | 'blocker'
  | 'killer'
  | 'mirror_slash'
  | 'mirror_back'
  | 'splitter';

interface BoardCell {
  kind: BoardCellKind;
  dir?: HackDir;
  fixed: boolean; // True for XML-defined generators, goals, blockers, killers, and pre-placed mirrors/splitters
  preplacedMirrorOrSplitter?: boolean;
}

interface TraceResult {
  segments: Array<{ r1: number; c1: number; r2: number; c2: number }>;
  poweredGoals: Set<string>;
  hitKiller: boolean;
}

function dirToVec(dir: HackDir): { dr: number; dc: number } {
  if (dir === 0) return { dr: -1, dc: 0 }; // UP
  if (dir === 1) return { dr: 0, dc: 1 }; // RIGHT
  if (dir === 2) return { dr: 1, dc: 0 }; // DOWN
  return { dr: 0, dc: -1 }; // LEFT
}

function createBoardFromPuzzle(puzzleId: string): BoardCell[][] {
  const puzzle = HACKING_PUZZLES[puzzleId] ?? HACKING_PUZZLES.hacking_minigame_ship01_01;
  return puzzle.grid.map((row) =>
    row.map((cell) => {
      if (cell.type === 1) return { kind: 'gen', dir: cell.dir ?? 1, fixed: true };
      if (cell.type === 2) return { kind: 'goal', dir: cell.dir ?? 1, fixed: true };
      if (cell.type === 3) {
        const slash = (cell.dir ?? 0) % 2 === 1;
        return {
          kind: slash ? 'mirror_slash' : 'mirror_back',
          fixed: false,
          preplacedMirrorOrSplitter: true,
        };
      }
      if (cell.type === 4) {
        return {
          kind: 'splitter',
          fixed: false,
          preplacedMirrorOrSplitter: true,
        };
      }
      if (cell.type === 5) return { kind: 'blocker', fixed: true };
      if (cell.type === 6) return { kind: 'killer', fixed: true };
      return { kind: 'empty', fixed: false };
    }),
  );
}

function traceLaser(board: BoardCell[][], rows: number, cols: number): TraceResult {
  const segments: TraceResult['segments'] = [];
  const poweredGoals = new Set<string>();
  let hitKiller = false;

  const queue: Array<{ r: number; c: number; dr: number; dc: number }> = [];
  for (let r = 0; r < rows; r++) {
    for (let c = 0; c < cols; c++) {
      if (board[r][c].kind === 'gen') {
        const v = dirToVec(board[r][c].dir ?? 1);
        queue.push({ r, c, dr: v.dr, dc: v.dc });
      }
    }
  }

  const visited = new Set<string>();

  while (queue.length > 0) {
    const ray = queue.shift()!;
    const visitKey = `${ray.r},${ray.c},${ray.dr},${ray.dc}`;
    if (visited.has(visitKey)) continue;
    visited.add(visitKey);

    let r = ray.r;
    let c = ray.c;
    let nr = r + ray.dr;
    let nc = c + ray.dc;

    while (nr >= 0 && nr < rows && nc >= 0 && nc < cols) {
      const cell = board[nr][nc];
      if (cell.kind === 'killer') {
        segments.push({ r1: ray.r, c1: ray.c, r2: nr, c2: nc });
        hitKiller = true;
        break;
      }
      if (cell.kind === 'blocker') {
        segments.push({ r1: ray.r, c1: ray.c, r2: nr, c2: nc });
        break;
      }
      if (cell.kind === 'goal') {
        segments.push({ r1: ray.r, c1: ray.c, r2: nr, c2: nc });
        poweredGoals.add(`${nr},${nc}`);
        break;
      }
      if (cell.kind === 'mirror_slash') {
        // '/' reflects (dr, dc) -> (-dc, -dr)
        segments.push({ r1: ray.r, c1: ray.c, r2: nr, c2: nc });
        queue.push({ r: nr, c: nc, dr: -ray.dc, dc: -ray.dr });
        break;
      }
      if (cell.kind === 'mirror_back') {
        // '\' reflects (dr, dc) -> (dc, dr)
        segments.push({ r1: ray.r, c1: ray.c, r2: nr, c2: nc });
        queue.push({ r: nr, c: nc, dr: ray.dc, dc: ray.dr });
        break;
      }
      if (cell.kind === 'splitter') {
        segments.push({ r1: ray.r, c1: ray.c, r2: nr, c2: nc });
        queue.push({ r: nr, c: nc, dr: -1, dc: 0 });
        queue.push({ r: nr, c: nc, dr: 1, dc: 0 });
        queue.push({ r: nr, c: nc, dr: 0, dc: -1 });
        queue.push({ r: nr, c: nc, dr: 0, dc: 1 });
        break;
      }

      r = nr;
      c = nc;
      nr += ray.dr;
      nc += ray.dc;
    }

    if (nr < 0 || nr >= rows || nc < 0 || nc >= cols) {
      segments.push({
        r1: ray.r,
        c1: ray.c,
        r2: r + ray.dr * 0.45,
        c2: c + ray.dc * 0.45,
      });
    }
  }

  return { segments, poweredGoals, hitKiller };
}

interface PhotonHackModalProps {
  terminalLabel: string;
  puzzleId: string;
  onComplete: (success: boolean) => void;
}

export const PhotonHackModal: React.FC<PhotonHackModalProps> = ({
  terminalLabel,
  puzzleId,
  onComplete,
}) => {
  const puzzle = HACKING_PUZZLES[puzzleId] ?? HACKING_PUZZLES.hacking_minigame_ship01_01;
  const [board, setBoard] = useState<BoardCell[][]>(() => createBoardFromPuzzle(puzzle.id));
  const [cursor, setCursor] = useState<{ r: number; c: number }>({ r: 2, c: 4 });
  const gamepad = useGamepadStatus();

  const counts = useMemo(() => {
    let placedMirrors = 0;
    let placedSplitters = 0;
    let totalGoals = 0;
    for (const row of board) {
      for (const cell of row) {
        if (cell.kind === 'goal') totalGoals++;
        if (!cell.preplacedMirrorOrSplitter) {
          if (cell.kind === 'mirror_slash' || cell.kind === 'mirror_back') placedMirrors++;
          if (cell.kind === 'splitter') placedSplitters++;
        }
      }
    }
    return {
      mirrorsLeft: Math.max(0, puzzle.mirrors - placedMirrors),
      splittersLeft: Math.max(0, puzzle.splitters - placedSplitters),
      totalGoals,
    };
  }, [board, puzzle.mirrors, puzzle.splitters]);

  const trace = useMemo(
    () => traceLaser(board, puzzle.rows, puzzle.columns),
    [board, puzzle.rows, puzzle.columns],
  );

  const solved = !trace.hitKiller && trace.poweredGoals.size === counts.totalGoals;

  const handleCellClick = (r: number, c: number) => {
    const cell = board[r][c];
    if (cell.fixed) return;

    let nextKind: BoardCellKind = cell.kind;
    if (cell.preplacedMirrorOrSplitter) {
      if (cell.kind === 'mirror_slash') nextKind = 'mirror_back';
      else if (cell.kind === 'mirror_back') nextKind = 'mirror_slash';
      else return;
    } else {
      if (cell.kind === 'empty') {
        if (counts.mirrorsLeft > 0) nextKind = 'mirror_slash';
        else if (counts.splittersLeft > 0) nextKind = 'splitter';
        else return;
      } else if (cell.kind === 'mirror_slash') {
        nextKind = 'mirror_back';
      } else if (cell.kind === 'mirror_back') {
        nextKind = counts.splittersLeft > 0 ? 'splitter' : 'empty';
      } else if (cell.kind === 'splitter') {
        nextKind = 'empty';
      }
    }

    novaAudio.playMenuSelect();
    setBoard((prev) =>
      prev.map((row, rIdx) =>
        row.map((item, cIdx) =>
          rIdx === r && cIdx === c ? { ...item, kind: nextKind } : item,
        ),
      ),
    );
  };

  const resetBoard = () => {
    novaAudio.playMenuSelect();
    setBoard(createBoardFromPuzzle(puzzle.id));
  };

  useGamepadMenuNav(true, {
    onUp: () => setCursor((p) => ({ ...p, r: (p.r - 1 + puzzle.rows) % puzzle.rows })),
    onDown: () => setCursor((p) => ({ ...p, r: (p.r + 1) % puzzle.rows })),
    onLeft: () => setCursor((p) => ({ ...p, c: (p.c - 1 + puzzle.columns) % puzzle.columns })),
    onRight: () => setCursor((p) => ({ ...p, c: (p.c + 1) % puzzle.columns })),
    onConfirm: () => handleCellClick(cursor.r, cursor.c),
    onX: () => resetBoard(),
    onY: () => {
      if (solved) onComplete(true);
    },
    onStart: () => {
      if (solved) onComplete(true);
    },
    onBack: () => {
      novaAudio.playMenuBack();
      onComplete(false);
    },
  });

  const cellW = 100;
  const viewW = puzzle.columns * cellW;
  const viewH = puzzle.rows * cellW;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-slate-950/90 p-4">
      <div className="w-full max-w-2xl rounded-xl border border-cyan-500/40 bg-slate-900 p-6 shadow-2xl">
        <div className="flex items-start justify-between gap-4 border-b border-slate-800 pb-4">
          <div>
            <p className="text-xs font-medium tracking-wider text-cyan-400">
              {puzzle.title}
            </p>
            <h2 className="font-display mt-1 text-xl font-bold text-white">
              {terminalLabel}
            </h2>
          </div>
          <button
            type="button"
            onClick={() => {
              novaAudio.playMenuBack();
              onComplete(false);
            }}
            className="rounded-lg border border-slate-700 bg-slate-800 p-2 text-slate-300 transition-colors hover:bg-slate-700 hover:text-white"
            aria-label="Cancel Hack"
          >
            <X className="h-4 w-4" />
          </button>
        </div>

        <div className="mt-3 flex flex-wrap items-center justify-between gap-2 text-xs text-slate-300">
          <span>
            Power up all the photon cells to hack the circuit. Don&apos;t hit the red components.
          </span>
          <div className="flex items-center gap-3 font-mono-num">
            <span className="text-cyan-300">
              Mirrors: {counts.mirrorsLeft}/{puzzle.mirrors}
            </span>
            <span className="text-emerald-300">
              Splitters: {counts.splittersLeft}/{puzzle.splitters}
            </span>
          </div>
        </div>

        {/* 6x9 Original XML Grid + SVG Beam */}
        <div
          className="relative mx-auto mt-4 w-full rounded-lg border border-slate-700 bg-slate-950 p-3"
          style={{ aspectRatio: `${puzzle.columns} / ${puzzle.rows}` }}
        >
          <svg
            viewBox={`0 0 ${viewW} ${viewH}`}
            className="pointer-events-none absolute inset-3 h-[calc(100%-24px)] w-[calc(100%-24px)]"
          >
            {trace.segments.map((seg, idx) => (
              <line
                key={idx}
                x1={seg.c1 * cellW + cellW / 2}
                y1={seg.r1 * cellW + cellW / 2}
                x2={seg.c2 * cellW + cellW / 2}
                y2={seg.r2 * cellW + cellW / 2}
                stroke={trace.hitKiller ? '#ef4444' : '#22d3ee'}
                strokeWidth="8"
                strokeLinecap="round"
                opacity="0.88"
              />
            ))}
          </svg>

          <div
            className="relative z-10 grid h-full w-full gap-1"
            style={{
              gridTemplateColumns: `repeat(${puzzle.columns}, minmax(0, 1fr))`,
              gridTemplateRows: `repeat(${puzzle.rows}, minmax(0, 1fr))`,
            }}
          >
            {board.map((row, r) =>
              row.map((cell, c) => {
                const key = `${r},${c}`;
                const isPowered = trace.poweredGoals.has(key);
                const interactive = !cell.fixed && !(cell.preplacedMirrorOrSplitter && cell.kind === 'splitter');
                const genArrow =
                  cell.dir === 0
                    ? '↑'
                    : cell.dir === 1
                      ? '→'
                      : cell.dir === 2
                        ? '↓'
                        : '←';

                const isCursor = gamepad.connected && cursor.r === r && cursor.c === c;

                return (
                  <button
                    key={key}
                    type="button"
                    disabled={!interactive && !gamepad.connected}
                    onClick={() => handleCellClick(r, c)}
                    className={`flex items-center justify-center rounded border text-sm font-bold transition-colors ${
                      isCursor ? 'ring-2 ring-cyan-300 ring-offset-1 ring-offset-slate-950 ' : ''
                    }${
                      cell.kind === 'gen'
                        ? 'border-cyan-400 bg-cyan-500/20 text-cyan-200'
                        : cell.kind === 'goal'
                          ? isPowered
                            ? 'border-emerald-400 bg-emerald-500/25 text-emerald-300'
                            : 'border-amber-500/60 bg-amber-500/10 text-amber-300'
                          : cell.kind === 'killer'
                            ? 'border-red-500/70 bg-red-500/20 text-red-400'
                            : cell.kind === 'blocker'
                              ? 'border-slate-600 bg-slate-800 text-slate-400'
                              : cell.preplacedMirrorOrSplitter
                                ? 'border-cyan-500/60 bg-slate-800/90 text-cyan-200 hover:border-cyan-300'
                                : 'border-slate-800 bg-slate-900/90 text-cyan-200 hover:border-cyan-500/60 hover:bg-slate-800'
                    }`}
                  >
                    {cell.kind === 'gen' && (
                      <span className="inline-flex items-center gap-0.5 text-xs">
                        <Zap className="h-3.5 w-3.5" />
                        <span>{genArrow}</span>
                      </span>
                    )}
                    {cell.kind === 'goal' && <CheckCircle2 className="h-4 w-4" />}
                    {cell.kind === 'killer' && <ShieldAlert className="h-4 w-4" />}
                    {cell.kind === 'blocker' && <Square className="h-4 w-4 fill-current" />}
                    {cell.kind === 'mirror_slash' && (
                      <span className="font-mono-num text-xl leading-none">/</span>
                    )}
                    {cell.kind === 'mirror_back' && (
                      <span className="font-mono-num text-xl leading-none">\</span>
                    )}
                    {cell.kind === 'splitter' && (
                      <span className="font-mono-num text-xl leading-none">+</span>
                    )}
                  </button>
                );
              }),
            )}
          </div>
        </div>

        <div className="mt-5 flex flex-wrap items-center justify-between gap-3 border-t border-slate-800 pt-4">
          <div className="text-sm">
            {trace.hitKiller ? (
              <span className="font-medium text-red-400">
                Hacking failed! Beam hit a red component
              </span>
            ) : solved ? (
              <span className="font-medium text-emerald-400">
                Hacking successful!
              </span>
            ) : (
              <span className="text-slate-400">
                Photon Cells:{' '}
                <span className="font-mono-num font-semibold text-white">
                  {trace.poweredGoals.size}/{counts.totalGoals}
                </span>
              </span>
            )}
          </div>

          <div className="flex items-center gap-2">
            {gamepad.connected && (
              <span className="hidden sm:inline text-xs text-slate-400 mr-2">
                D-Pad Move · A Rotate · X Reset · Y Submit · B Exit
              </span>
            )}
            <button
              type="button"
              onClick={resetBoard}
              className="inline-flex items-center gap-1.5 rounded-lg border border-slate-700 bg-slate-800 px-3 py-2 text-xs font-semibold text-slate-200 transition-colors hover:bg-slate-700 whitespace-nowrap"
            >
              <RotateCw className="h-3.5 w-3.5" />
              Reset
            </button>
            <button
              type="button"
              disabled={!solved}
              onClick={() => onComplete(true)}
              className={`rounded-lg px-4 py-2 text-xs font-semibold transition-colors whitespace-nowrap ${
                solved
                  ? 'bg-cyan-500 text-slate-950 hover:bg-cyan-400'
                  : 'cursor-not-allowed bg-slate-800 text-slate-500'
              }`}
            >
              Hack
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};
