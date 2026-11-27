import { useEffect, useRef, useState } from 'react';

export const GP_BTN = {
  A: 0,
  B: 1,
  X: 2,
  Y: 3,
  LB: 4,
  RB: 5,
  LT: 6,
  RT: 7,
  BACK: 8,
  START: 9,
  L3: 10,
  R3: 11,
  UP: 12,
  DOWN: 13,
  LEFT: 14,
  RIGHT: 15,
} as const;

export interface GamepadFrameState {
  connected: boolean;
  label: string | null;
  moveX: number;
  moveY: number;
  lookX: number;
  lookY: number;
  rtHeld: boolean;
  rtJustPressed: boolean;
  ltHeld: boolean;
  ltJustPressed: boolean;
  justPressed: boolean[];
  held: boolean[];
}

const BUTTON_COUNT = 17;

function applyRadialDeadzone(
  rawX: number,
  rawY: number,
  deadzone: number,
  curveExponent = 1.0,
): { x: number; y: number } {
  const mag = Math.hypot(rawX, rawY);
  if (mag <= deadzone || mag < 1e-5) {
    return { x: 0, y: 0 };
  }
  const scaled = Math.min(1, (mag - deadzone) / Math.max(0.05, 1 - deadzone));
  const curved = curveExponent === 1 ? scaled : Math.pow(scaled, curveExponent);
  const factor = curved / mag;
  return { x: rawX * factor, y: rawY * factor };
}

export function getPrimaryGamepad(): Gamepad | null {
  if (typeof navigator === 'undefined' || !navigator.getGamepads) return null;
  const pads = navigator.getGamepads();
  for (let i = 0; i < pads.length; i++) {
    const pad = pads[i];
    if (pad && pad.connected) return pad;
  }
  return null;
}

export function formatGamepadName(id: string | null | undefined): string {
  if (!id) return 'Controller';
  const cleaned = id.replace(/\s*\(STANDARD GAMEPAD.*?\)/i, '').trim();
  return cleaned.length > 28 ? `${cleaned.slice(0, 26)}…` : cleaned || 'Controller';
}

export function triggerGamepadRumble(
  weakMagnitude: number,
  strongMagnitude: number,
  durationMs: number,
): void {
  const pad = getPrimaryGamepad() as
    | (Gamepad & {
        vibrationActuator?: {
          playEffect?: (
            type: string,
            params: {
              startDelay: number;
              duration: number;
              weakMagnitude: number;
              strongMagnitude: number;
            },
          ) => Promise<void>;
        };
      })
    | null;
  if (!pad?.vibrationActuator?.playEffect) return;
  try {
    void pad.vibrationActuator.playEffect('dual-rumble', {
      startDelay: 0,
      duration: Math.max(15, Math.min(450, durationMs)),
      weakMagnitude: Math.max(0, Math.min(1, weakMagnitude)),
      strongMagnitude: Math.max(0, Math.min(1, strongMagnitude)),
    });
  } catch {
    // Ignore unsupported browser rumble errors
  }
}

export class GamepadPoller {
  private prevButtons = new Array<boolean>(BUTTON_COUNT).fill(false);
  private prevRt = false;
  private prevLt = false;
  private frameState: GamepadFrameState = {
    connected: false,
    label: null,
    moveX: 0,
    moveY: 0,
    lookX: 0,
    lookY: 0,
    rtHeld: false,
    rtJustPressed: false,
    ltHeld: false,
    ltJustPressed: false,
    justPressed: new Array<boolean>(BUTTON_COUNT).fill(false),
    held: new Array<boolean>(BUTTON_COUNT).fill(false),
  };

  public resetEdges(): void {
    this.prevButtons.fill(false);
    this.prevRt = false;
    this.prevLt = false;
    this.frameState.justPressed.fill(false);
    this.frameState.rtJustPressed = false;
    this.frameState.ltJustPressed = false;
  }

  public poll(deadzone = 0.14): GamepadFrameState {
    const pad = getPrimaryGamepad();
    const state = this.frameState;

    if (!pad) {
      state.connected = false;
      state.label = null;
      state.moveX = 0;
      state.moveY = 0;
      state.lookX = 0;
      state.lookY = 0;
      state.rtHeld = false;
      state.rtJustPressed = false;
      state.ltHeld = false;
      state.ltJustPressed = false;
      state.justPressed.fill(false);
      state.held.fill(false);
      this.prevButtons.fill(false);
      this.prevRt = false;
      this.prevLt = false;
      return state;
    }

    state.connected = true;
    state.label = formatGamepadName(pad.id);

    const move = applyRadialDeadzone(pad.axes[0] ?? 0, pad.axes[1] ?? 0, deadzone, 1.0);
    const look = applyRadialDeadzone(pad.axes[2] ?? 0, pad.axes[3] ?? 0, deadzone, 1.7);
    state.moveX = move.x;
    state.moveY = move.y;
    state.lookX = look.x;
    state.lookY = look.y;

    for (let i = 0; i < BUTTON_COUNT; i++) {
      const btn = pad.buttons[i];
      const pressed = Boolean(btn && (btn.pressed || btn.value > 0.45));
      state.held[i] = pressed;
      state.justPressed[i] = pressed && !this.prevButtons[i];
      this.prevButtons[i] = pressed;
    }

    const ltVal = pad.buttons[GP_BTN.LT]?.value ?? 0;
    const rtVal = pad.buttons[GP_BTN.RT]?.value ?? 0;
    const ltHeld = Boolean(pad.buttons[GP_BTN.LT]?.pressed || ltVal > 0.22);
    const rtHeld = Boolean(pad.buttons[GP_BTN.RT]?.pressed || rtVal > 0.22);

    state.ltHeld = ltHeld;
    state.ltJustPressed = ltHeld && !this.prevLt;
    state.rtHeld = rtHeld;
    state.rtJustPressed = rtHeld && !this.prevRt;
    this.prevLt = ltHeld;
    this.prevRt = rtHeld;

    return state;
  }
}

export function useGamepadStatus(): { connected: boolean; label: string | null } {
  const [status, setStatus] = useState<{ connected: boolean; label: string | null }>(() => {
    const pad = getPrimaryGamepad();
    return {
      connected: Boolean(pad),
      label: pad ? formatGamepadName(pad.id) : null,
    };
  });

  useEffect(() => {
    const sync = () => {
      const pad = getPrimaryGamepad();
      setStatus({
        connected: Boolean(pad),
        label: pad ? formatGamepadName(pad.id) : null,
      });
    };
    window.addEventListener('gamepadconnected', sync);
    window.addEventListener('gamepaddisconnected', sync);
    const timer = window.setInterval(sync, 900);
    return () => {
      window.removeEventListener('gamepadconnected', sync);
      window.removeEventListener('gamepaddisconnected', sync);
      window.clearInterval(timer);
    };
  }, []);

  return status;
}

export interface GamepadNavHandlers {
  onUp?: () => void;
  onDown?: () => void;
  onLeft?: () => void;
  onRight?: () => void;
  onConfirm?: () => void;
  onBack?: () => void;
  onX?: () => void;
  onY?: () => void;
  onLB?: () => void;
  onRB?: () => void;
  onStart?: () => void;
}

export function useGamepadMenuNav(
  active: boolean,
  handlers: GamepadNavHandlers,
): void {
  const handlersRef = useRef(handlers);
  handlersRef.current = handlers;

  useEffect(() => {
    if (!active) return;

    const poller = new GamepadPoller();
    // Seed initial held state so a button already pressed on modal open doesn't misfire
    poller.poll(0.25);

    let rafId = 0;
    let lastDirAt = 0;
    let lastDir: 'up' | 'down' | 'left' | 'right' | null = null;

    const loop = (now: number) => {
      const gp = poller.poll(0.28);
      const h = handlersRef.current;

      if (gp.connected) {
        if (gp.justPressed[GP_BTN.A]) h.onConfirm?.();
        if (gp.justPressed[GP_BTN.B]) h.onBack?.();
        if (gp.justPressed[GP_BTN.X]) h.onX?.();
        if (gp.justPressed[GP_BTN.Y]) h.onY?.();
        if (gp.justPressed[GP_BTN.LB]) h.onLB?.();
        if (gp.justPressed[GP_BTN.RB]) h.onRB?.();
        if (gp.justPressed[GP_BTN.START]) h.onStart?.();

        let dir: 'up' | 'down' | 'left' | 'right' | null = null;
        if (gp.held[GP_BTN.UP] || gp.moveY < -0.55) dir = 'up';
        else if (gp.held[GP_BTN.DOWN] || gp.moveY > 0.55) dir = 'down';
        else if (gp.held[GP_BTN.LEFT] || gp.moveX < -0.55) dir = 'left';
        else if (gp.held[GP_BTN.RIGHT] || gp.moveX > 0.55) dir = 'right';

        if (!dir) {
          lastDir = null;
        } else if (dir !== lastDir || now - lastDirAt >= 180) {
          lastDir = dir;
          lastDirAt = now;
          if (dir === 'up') h.onUp?.();
          else if (dir === 'down') h.onDown?.();
          else if (dir === 'left') h.onLeft?.();
          else if (dir === 'right') h.onRight?.();
        }
      }

      rafId = requestAnimationFrame(loop);
    };

    rafId = requestAnimationFrame(loop);
    return () => cancelAnimationFrame(rafId);
  }, [active]);
}
