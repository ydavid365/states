base:
  '*':
    - salt
    - pacman
    - pacman.uk
    - kernel.xen
    - grub
    - fstab
    - bash
    - logrotate
  'sodium.uggedal.com':
    - salt.master
    - nodes.sodium.rc
    - zsh
    - development
    - development.python
    - packaging
