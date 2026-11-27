# N.O.V.A. Reborn

**A browser-based 3D sci-fi FPS inspired by the Near Orbit Vanguard Alliance universe.**

The game features three combat sectors, upgradeable weapons, Xeno enemies, suit abilities, and photon circuit puzzles. This repository also includes a community-made Android controller patch for N.O.V.A. HD 1.1.4 and an APK build workflow.

> This is an unofficial community project and is not published by Gameloft. The N.O.V.A. trademark and original game content belong to their respective rights holders.

## Android controller release

[**View N.O.V.A. HD 1.1.4 Controller Support →**](https://github.com/mnkhprre/nova_reborn/releases/tag/v1.1.4-controller.1)

Download `nova-reborn-debug.apk` from the release page and install it on your Android device. The APK is built in CI and signed with a debug key, so it may not install over an existing copy signed with a different key.

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

`.github/workflows/build-apk.yml` builds the Android APK with GitHub Actions on pushes to the `main` branch and on pull requests. The build output is available in the workflow run's **Artifacts** section as `nova-reborn-debug-apk` and is retained for 14 days. Use the release link above to download the release APK.

## Project status

- Browser game: playable prototype
- Android: controller modifications for N.O.V.A. HD 1.1.4
- Automated APK builds: GitHub Actions

The Android APK and release page are available only to users with repository access because this repository is currently private.
