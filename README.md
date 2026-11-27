# N.O.V.A. Reborn

**A browser-based 3D sci-fi FPS inspired by the Near Orbit Vanguard Alliance universe.**

The game features three combat sectors, upgradeable weapons, Xeno enemies, suit abilities, and photon circuit puzzles. This repository also includes a community-made Android controller patch for N.O.V.A. HD 1.1.4 and an APK build workflow.

> This is an unofficial community project and is not published by Gameloft. The N.O.V.A. trademark and original game content belong to their respective rights holders.

## Android controller release

[**View N.O.V.A. HD 1.1.4 Controller Support →**](https://github.com/mnkhprre/nova_reborn/releases/tag/v1.1.4-controller.1)

Original game download: [N.O.V.A. on the Internet Archive](https://archive.org/details/nova-1).

Download `nova-reborn-1.1.5-with-game-data.apk` from the latest successful GitHub Actions run and install it on your Android device. It will not install over a copy signed with a different key (for example the original Play Store build); uninstall that copy first. On first launch, the app installs the bundled files into `/sdcard/gameloft/games/nova` before starting the game. Existing files not present in the bundle are preserved.

**Android 14 and newer:** the system blocks installing apps that target very old Android versions, so a normal install fails. Install with adb instead:

```bash
adb install --bypass-low-target-sdk-block nova-reborn-1.1.5-with-game-data.apk
```

The target SDK cannot simply be raised: `libnova.so` contains text relocations, which Android refuses to load for apps targeting API 23 or newer. The game also ships only 32-bit (`armeabi-v7a`) native code, so it does not run on 64-bit-only devices.

### Controls

| Input | Action |
| --- | --- |
| Left stick | Move |
| Right stick | Camera |
| R2 | Fire (digital button or analog trigger) |
| R1 | Reload |
| L1 | Previous weapon |
| Y | Next weapon |
| A / B | Jump |
| X | Suit ability |
| Start | Pause |
| D-pad | Navigate menus |

## Browser game

### Start the development server

```bash
npm install
npm run dev
```

To create a production build:

```bash
npm run build
```

The project uses React, TypeScript, Vite, and Three.js. A current browser with WebGL support is required.

## Android APK build

`.github/workflows/build-apk.yml` builds and signs a single installable APK on pushes to `main`, pull requests, or a manual workflow run. During the build, GitHub Actions downloads the game-data ZIP from the Internet Archive and packages it inside the APK. The launcher extracts the files on first launch to `/sdcard/gameloft/games/nova`, then starts the game. Allow storage access when prompted and keep the app open during extraction.

The workflow artifact is `nova-reborn-1.1.5-with-game-data` in the run's **Artifacts** section and is retained for 14 days. Manual runs can override the data ZIP URL with the `game_data_url` input. The resulting APK is about 200 MB because it contains the game data.

### Signing key

So that each new build installs over the previous one, the workflow signs with a fixed key stored in repository secrets:

| Secret | Value |
| --- | --- |
| `ANDROID_KEYSTORE_BASE64` | The keystore file, base64-encoded |
| `ANDROID_KEYSTORE_PASSWORD` | Keystore password |
| `ANDROID_KEY_ALIAS` | Key alias |
| `ANDROID_KEY_PASSWORD` | Key password (optional; defaults to the keystore password) |

Without these secrets (for example on pull requests from forks) the build falls back to a throwaway key and prints a warning. Keep a backup of the keystore: if it is lost, users must uninstall before installing a build signed with a new key. Never commit the keystore (`*.keystore` and `*.jks` are ignored).

## Project status

- Browser game: playable prototype
- Android: controller modifications for N.O.V.A. HD 1.1.4
- Automated APK builds: GitHub Actions

The Android APK and release page are available only to users with repository access because this repository is currently private.
