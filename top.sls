base:
  '*':
    - salt
    - pacman
    - pacman.uk
    - kernel.xen
    - grub
    - fstab
  'sodium.uggedal.com':
    - salt.master
    - nodes.sodium.rc
