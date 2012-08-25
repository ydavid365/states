include:
  - xorg

intelpkgs:
  pkg.installed:
    - names:
      - xf86-video-intel
      - libva-driver-intel
    - require:
      - pkg: xorg-server
