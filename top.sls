base:
  '*':
    - salt
    - pacman
    - pacman.uk
    - kernel.xen
    - grub
    - fstab
    - bash
  'sodium.uggedal.com':
    - salt.master
    - nodes.sodium.rc
