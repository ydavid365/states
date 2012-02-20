include:
  - kernel

/etc/mkinitcpio.conf:
  file:
    - managed
    - source: salt://kernel/mkinitcpio.xen.conf
    - require:
      - pkg: kernel

mkinitcpio -p linux-lts:
  cmd:
    - wait
    - watch:
      - file: /etc/mkinitcpio.conf
