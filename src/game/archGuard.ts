// Set to true when locking final distribution strictly to ARM64 processors.
// Can also be tested immediately by appending ?arm64=1 to the URL.
export const ENFORCE_ARM64_LOCK = false;

export function shouldEnforceArm64Lock(): boolean {
  if (ENFORCE_ARM64_LOCK) return true;
  if (typeof window !== 'undefined') {
    const params = new URLSearchParams(window.location.search);
    if (params.get('arm64') === '1') return true;
  }
  return false;
}

export interface ArchCheckResult {
  allowed: boolean;
  architecture: string;
  bitness: string;
  platform: string;
  renderer: string;
  reason: string;
}

interface NavigatorUAData {
  platform?: string;
  getHighEntropyValues?: (hints: string[]) => Promise<{
    architecture?: string;
    bitness?: string;
    platform?: string;
    model?: string;
  }>;
}

const NON_ARM64_PATTERN =
  /\b(x86_64|x86-64|amd64|x64|win64|wow64|i686|i586|i486|i386|x86|win32|armeabi-v7a|armeabi|armv7l|armv7|armv6)\b/i;

const EXPLICIT_ARM64_PATTERN =
  /\b(arm64|aarch64|armv8|arm64-v8a)\b/i;

function probeWebGLRenderer(): string {
  try {
    const canvas = document.createElement('canvas');
    const gl = canvas.getContext('webgl2') || canvas.getContext('webgl');
    if (!gl) return 'Unavailable';
    const ext = gl.getExtension('WEBGL_debug_renderer_info');
    const renderer = ext
      ? String(gl.getParameter(ext.UNMASKED_RENDERER_WEBGL) ?? '')
      : String(gl.getParameter(gl.RENDERER) ?? '');
    gl.getExtension('WEBGL_lose_context')?.loseContext();
    return renderer || 'Unknown';
  } catch {
    return 'Unknown';
  }
}

export async function checkArm64Architecture(): Promise<ArchCheckResult> {
  const nav = navigator as Navigator & { userAgentData?: NavigatorUAData };
  const ua = navigator.userAgent || '';
  const platform = navigator.platform || nav.userAgentData?.platform || 'Unknown';
  const combinedUa = `${ua} ${platform}`;
  const renderer = probeWebGLRenderer();

  // 1. Primary W3C User-Agent Client Hints check (Chromium / Android WebView / Edge)
  if (nav.userAgentData?.getHighEntropyValues) {
    try {
      const hints = await nav.userAgentData.getHighEntropyValues([
        'architecture',
        'bitness',
        'platform',
      ]);
      const rawArch = (hints.architecture || '').trim().toLowerCase();
      const rawBits = (hints.bitness || '').trim();
      const hintPlatform = hints.platform || platform;

      if (rawArch) {
        const isArm64 = rawArch === 'arm' && rawBits === '64';
        const displayArch =
          rawArch === 'arm' && rawBits === '64'
            ? 'arm64'
            : rawArch === 'x86' && rawBits === '64'
              ? 'x86_64'
              : rawBits
                ? `${rawArch} (${rawBits}-bit)`
                : rawArch;

        return {
          allowed: isArm64,
          architecture: displayArch,
          bitness: rawBits || 'unknown',
          platform: hintPlatform,
          renderer,
          reason: isArm64
            ? 'Verified 64-bit ARM (arm64) execution environment.'
            : `Detected ${displayArch} on ${hintPlatform}. This runtime only permits 64-bit ARM (arm64 / aarch64).`,
        };
      }
    } catch {
      // Fall through to UA / platform / WebGL inspection
    }
  }

  // 2. Explicit non-ARM64 rejection (x86, x86_64, amd64, 32-bit ARMv7)
  if (NON_ARM64_PATTERN.test(combinedUa)) {
    const match = combinedUa.match(NON_ARM64_PATTERN)?.[1] ?? 'x86/32-bit';
    return {
      allowed: false,
      architecture: match,
      bitness: /64/.test(match) ? '64' : '32',
      platform,
      renderer,
      reason: `Detected ${match} on ${platform}. N.O.V.A. HD requires an ARM64 (aarch64 / arm64-v8a) processor.`,
    };
  }

  // 3. Explicit ARM64 strings in UA or platform
  if (EXPLICIT_ARM64_PATTERN.test(combinedUa)) {
    return {
      allowed: true,
      architecture: 'arm64',
      bitness: '64',
      platform,
      renderer,
      reason: 'Verified ARM64 (aarch64) host.',
    };
  }

  // 4. iOS / iPadOS (modern Apple A-series / M-series 64-bit ARM64 Safari/WebKit)
  if (/iPhone|iPad|iPod/i.test(ua) && !/Simulator/i.test(ua)) {
    return {
      allowed: true,
      architecture: 'arm64',
      bitness: '64',
      platform,
      renderer,
      reason: 'Verified Apple ARM64 mobile hardware.',
    };
  }

  // 5. macOS Safari / Firefox (reports MacIntel even on Apple Silicon; verify via WebGL GPU)
  if (/Mac/i.test(platform) || /Macintosh/i.test(ua)) {
    if (/Apple\s*(M\d+|A\d+|GPU)/i.test(renderer)) {
      return {
        allowed: true,
        architecture: 'arm64',
        bitness: '64',
        platform,
        renderer,
        reason: 'Verified Apple Silicon ARM64 GPU/CPU.',
      };
    }
    return {
      allowed: false,
      architecture: 'x86_64 (non-Apple-Silicon)',
      bitness: '64',
      platform,
      renderer,
      reason: `Detected non-ARM64 Mac (${renderer}). N.O.V.A. HD requires an ARM64 processor.`,
    };
  }

  // 6. Unverified / generic fallback -> block non-ARM64 by default
  return {
    allowed: false,
    architecture: 'unknown',
    bitness: 'unknown',
    platform,
    renderer,
    reason:
      'Could not verify a 64-bit ARM (arm64 / aarch64) CPU architecture on this device.',
  };
}
