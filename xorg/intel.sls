include:
  - xorg

intelpkgs:
  pkg.installed:
    - names:
      - xf86-video-intel
      - libva-intel-driver
    - require:
      - pkg: xorg-server
