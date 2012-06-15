include:
  - xorg

nvidiapkgs:
  pkg.installed:
    - names:
      - libgl
      - xf86-video-nouveau
    - require:
      - pkg: xorg-server
