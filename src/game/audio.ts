import type { EnemyKind, MissionId, WeaponId } from './types';

type SfxKey =
  | 'menu_select'
  | 'menu_back'
  | 'console_activate'
  | 'base_ai_01'
  | 'change_weapon'
  | 'pistol_fire'
  | 'pistol_reload'
  | 'assault_fire'
  | 'assault_reload'
  | 'shotgun_fire'
  | 'shotgun_reload'
  | 'sniper_fire'
  | 'sniper_reload'
  | 'sniper_zoom'
  | 'plasma_fire'
  | 'plasma_ready'
  | 'plasma_impact'
  | 'rocket_fire'
  | 'grenade_explode'
  | 'grenade_bounce'
  | 'grunt_detect'
  | 'grunt_attack'
  | 'grunt_hit'
  | 'grunt_die'
  | 'imp_detect'
  | 'imp_attack'
  | 'imp_hit'
  | 'imp_die'
  | 'fiend_aggro'
  | 'fiend_hit'
  | 'fiend_die'
  | 'daemon_grunt'
  | 'daemon_attack'
  | 'daemon_die'
  | 'mc_hurt'
  | 'mc_jump'
  | 'health_restore'
  | 'mc_ammo'
  | 'pickup_dd'
  | 'm_level_cleared';

const SFX_FILES: SfxKey[] = [
  'menu_select',
  'menu_back',
  'console_activate',
  'base_ai_01',
  'change_weapon',
  'pistol_fire',
  'pistol_reload',
  'assault_fire',
  'assault_reload',
  'shotgun_fire',
  'shotgun_reload',
  'sniper_fire',
  'sniper_reload',
  'sniper_zoom',
  'plasma_fire',
  'plasma_ready',
  'plasma_impact',
  'rocket_fire',
  'grenade_explode',
  'grenade_bounce',
  'grunt_detect',
  'grunt_attack',
  'grunt_hit',
  'grunt_die',
  'imp_detect',
  'imp_attack',
  'imp_hit',
  'imp_die',
  'fiend_aggro',
  'fiend_hit',
  'fiend_die',
  'daemon_grunt',
  'daemon_attack',
  'daemon_die',
  'mc_hurt',
  'mc_jump',
  'health_restore',
  'mc_ammo',
  'pickup_dd',
  'm_level_cleared',
];

class NovaAudioEngine {
  private ctx: AudioContext | null = null;
  private masterGain: GainNode | null = null;
  private sfxGain: GainNode | null = null;
  private volume = 0.65;
  private buffers = new Map<SfxKey, AudioBuffer>();
  private loading = new Set<SfxKey>();
  private preloaded = false;
  private musicEl: HTMLAudioElement | null = null;
  private activeMusicKey: string | null = null;

  private ensureContext(): AudioContext | null {
    if (typeof window === 'undefined') return null;
    if (!this.ctx) {
      const AudioCtx =
        window.AudioContext ||
        (window as unknown as { webkitAudioContext: typeof AudioContext }).webkitAudioContext;
      if (!AudioCtx) return null;
      this.ctx = new AudioCtx();
      this.masterGain = this.ctx.createGain();
      this.masterGain.gain.value = this.volume;
      this.masterGain.connect(this.ctx.destination);

      this.sfxGain = this.ctx.createGain();
      this.sfxGain.gain.value = 0.9;
      this.sfxGain.connect(this.masterGain);
    }
    if (this.ctx.state === 'suspended') {
      void this.ctx.resume();
    }
    if (!this.preloaded) {
      this.preloaded = true;
      for (const key of SFX_FILES) {
        void this.loadBuffer(key);
      }
    }
    return this.ctx;
  }

  private async loadBuffer(key: SfxKey): Promise<AudioBuffer | null> {
    const existing = this.buffers.get(key);
    if (existing) return existing;
    if (this.loading.has(key)) return null;
    this.loading.add(key);

    const ctx = this.ctx;
    if (!ctx) return null;
    try {
      const res = await fetch(`/sounds/${key}.ogg`);
      if (!res.ok) return null;
      const arr = await res.arrayBuffer();
      const decoded = await ctx.decodeAudioData(arr);
      this.buffers.set(key, decoded);
      return decoded;
    } catch {
      return null;
    } finally {
      this.loading.delete(key);
    }
  }

  private playBuffer(key: SfxKey, gainScale = 1, playbackRate = 1): boolean {
    const ctx = this.ensureContext();
    if (!ctx || !this.sfxGain) return false;
    const buf = this.buffers.get(key);
    if (!buf) {
      void this.loadBuffer(key);
      return false;
    }
    const src = ctx.createBufferSource();
    src.buffer = buf;
    src.playbackRate.value = playbackRate;
    const gain = ctx.createGain();
    gain.gain.value = gainScale;
    src.connect(gain);
    gain.connect(this.sfxGain);
    src.start();
    return true;
  }

  public setVolume(v: number): void {
    this.volume = Math.max(0, Math.min(1, v));
    if (this.masterGain && this.ctx) {
      this.masterGain.gain.setTargetAtTime(this.volume, this.ctx.currentTime, 0.02);
    }
    if (this.musicEl) {
      this.musicEl.volume = this.volume * 0.42;
    }
  }

  public startMenuMusic(): void {
    this.playMusicChain('/sounds/m_menu.ogg', null);
  }

  public startTitleMusic(): void {
    this.playMusicChain('/sounds/m_title.ogg', '/sounds/m_menu.ogg');
  }

  public startMissionMusic(missionId: MissionId): void {
    if (missionId === 'ship_l1') {
      this.playMusicChain('/sounds/m_ship_intro.ogg', '/sounds/m_ship.ogg');
    } else if (missionId === 'ship_l2') {
      this.playMusicChain('/sounds/m_ship_intro.ogg', '/sounds/m_ship2.ogg');
    } else if (missionId === 'jungle_l1') {
      this.playMusicChain('/sounds/m_jungle_intro.ogg', '/sounds/m_jungle.ogg');
    } else {
      this.playMusicChain('/sounds/m_jungle_intro.ogg', '/sounds/m_jungle2.ogg');
    }
  }

  public stopMusic(): void {
    if (this.musicEl) {
      this.musicEl.pause();
      this.musicEl.src = '';
      this.musicEl = null;
    }
    this.activeMusicKey = null;
  }

  private playMusicChain(primaryUrl: string, loopUrl: string | null): void {
    if (typeof window === 'undefined') return;
    const key = `${primaryUrl}|${loopUrl ?? ''}`;
    if (this.activeMusicKey === key && this.musicEl && !this.musicEl.paused) {
      return;
    }
    this.stopMusic();
    this.activeMusicKey = key;

    const audio = new Audio(primaryUrl);
    audio.volume = this.volume * 0.42;
    audio.loop = loopUrl === null;
    if (loopUrl) {
      audio.addEventListener(
        'ended',
        () => {
          if (this.musicEl !== audio) return;
          audio.src = loopUrl;
          audio.loop = true;
          void audio.play().catch(() => {});
        },
        { once: true },
      );
    }
    this.musicEl = audio;
    void audio.play().catch(() => {});
  }

  public playMenuSelect(): void {
    this.playBuffer('menu_select', 0.75);
  }

  public playMenuBack(): void {
    this.playBuffer('menu_back', 0.75);
  }

  public playConsoleActivate(): void {
    this.playBuffer('console_activate', 0.85);
  }

  public playBaseAiGreeting(): void {
    this.playBuffer('base_ai_01', 0.85);
  }

  public playWeaponSwitch(): void {
    this.playBuffer('change_weapon', 0.7);
  }

  public playWeaponFire(weapon: WeaponId): void {
    const map: Record<WeaponId, SfxKey> = {
      handgun: 'pistol_fire',
      assault: 'assault_fire',
      shotgun: 'shotgun_fire',
      sniper: 'sniper_fire',
      plasma: 'plasma_fire',
      rocket: 'rocket_fire',
    };
    this.playBuffer(map[weapon], 0.9);
  }

  public playReload(weapon: WeaponId): void {
    const map: Record<WeaponId, SfxKey> = {
      handgun: 'pistol_reload',
      assault: 'assault_reload',
      shotgun: 'shotgun_reload',
      sniper: 'sniper_reload',
      plasma: 'plasma_ready',
      rocket: 'pistol_reload',
    };
    this.playBuffer(map[weapon], 0.85);
  }

  public playSniperZoom(): void {
    this.playBuffer('sniper_zoom', 0.8);
  }

  public playPlasmaImpact(): void {
    this.playBuffer('plasma_impact', 0.7);
  }

  public playExplosion(): void {
    this.playBuffer('grenade_explode', 1.0);
  }

  public playGrenadeBounce(): void {
    this.playBuffer('grenade_bounce', 0.7);
  }

  public playEnemyDetect(kind: EnemyKind): void {
    if (kind === 'grunt') this.playBuffer('grunt_detect', 0.7);
    else if (kind === 'imp') this.playBuffer('imp_detect', 0.7);
    else if (kind === 'fiend') this.playBuffer('fiend_aggro', 0.75);
    else this.playBuffer('daemon_grunt', 0.8);
  }

  public playEnemyAttack(kind: EnemyKind): void {
    if (kind === 'grunt') this.playBuffer('grunt_attack', 0.75);
    else if (kind === 'imp') this.playBuffer('imp_attack', 0.75);
    else if (kind === 'fiend') this.playBuffer('fiend_aggro', 0.7);
    else this.playBuffer('daemon_attack', 0.8);
  }

  public playEnemyHit(kind: EnemyKind, headshot: boolean): void {
    const rate = headshot ? 1.15 : 1.0;
    if (kind === 'grunt') this.playBuffer('grunt_hit', 0.65, rate);
    else if (kind === 'imp') this.playBuffer('imp_hit', 0.65, rate);
    else if (kind === 'fiend') this.playBuffer('fiend_hit', 0.7, rate);
    else this.playBuffer('grunt_hit', 0.65, 0.8);
  }

  public playEnemyDeath(kind: EnemyKind): void {
    if (kind === 'grunt') this.playBuffer('grunt_die', 0.85);
    else if (kind === 'imp') this.playBuffer('imp_die', 0.85);
    else if (kind === 'fiend') this.playBuffer('fiend_die', 0.85);
    else this.playBuffer('daemon_die', 0.9);
  }

  public playPlayerHurt(): void {
    this.playBuffer('mc_hurt', 0.85);
  }

  public playJump(): void {
    this.playBuffer('mc_jump', 0.65);
  }

  public playPickup(kind: 'health' | 'ammo' | 'damage'): void {
    if (kind === 'health') this.playBuffer('health_restore', 0.85);
    else if (kind === 'ammo') this.playBuffer('mc_ammo', 0.85);
    else this.playBuffer('pickup_dd', 0.9);
  }

  public playParalyzer(): void {
    this.playBuffer('plasma_ready', 0.95, 0.8);
  }

  public playLevelCleared(): void {
    this.stopMusic();
    this.playBuffer('m_level_cleared', 0.85);
  }
}

export const novaAudio = new NovaAudioEngine();
