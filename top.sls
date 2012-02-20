base:
  '*':
    - salt
    - pacman
    - pacman.uk
    - kernel.xen
    - grub
  'sodium.uggedal.com':
    - salt.master
    - nodes.sodium.rc
