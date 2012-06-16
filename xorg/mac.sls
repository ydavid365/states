include:
  - xorg

/etc/X11/xorg.conf.d/10-evdev.conf:
  file.managed:
    - source: salt://xorg/evdev-mac.conf
    - require:
      - pkg: xorg-server

