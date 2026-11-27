import * as THREE from 'three';

const loader = new THREE.TextureLoader();
const textureCache = new Map<string, THREE.Texture>();

export function loadOriginalTexture(
  filename: string,
  repeatX = 1,
  repeatY = 1,
  maxAnisotropy = 4,
  flipY = true,
): THREE.Texture {
  const key = `${filename}|${repeatX}|${repeatY}|${flipY}`;
  const cached = textureCache.get(key);
  if (cached) return cached;

  const tex = loader.load(`/textures/${filename}`);
  tex.flipY = flipY;
  tex.colorSpace = THREE.SRGBColorSpace;
  tex.wrapS = THREE.RepeatWrapping;
  tex.wrapT = THREE.RepeatWrapping;
  tex.repeat.set(repeatX, repeatY);
  tex.anisotropy = maxAnisotropy;
  textureCache.set(key, tex);
  return tex;
}
