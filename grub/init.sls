/boot/grub/menu.lst:
  file:
    - managed
    - source: salt://grub/menu.lst
    - require:
      - cmd: mkinitcpio

