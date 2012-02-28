/etc/pacman.conf:
  file:
    - managed
    - source: salt://pacman/pacman.conf

pacman-contrib:
  pkg:
    - installed
