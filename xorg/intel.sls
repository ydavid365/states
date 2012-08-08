include:
  - xorg

intelpkgs:
  pkg.installed:
    - names:
      - xf86-video-intel
    - require:
      - pkg: xorg-server
