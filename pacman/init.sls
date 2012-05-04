/etc/pacman.conf:
  file.managed:
    - source: salt://pacman/pacman.conf
    - order: 1

pacman-contrib:
  pkg.installed
