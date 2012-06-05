base:
  '*':
    - core
    - pacman.uk
    - kernel.xen
    - grub
    - fstab
    - users
  'sodium.uggedal.com':
    - salt.master
    - zsh
    - sic
    - development*
    - packaging
    - nginx.sites
    - uwsgi.vassals
    - redis
    - postgresql.databases
  'magnesium.uggedal.com':
    - tarsnap.backup
    - nginx.sites
    - uwsgi.vassals
    - redis
    - postgresql.databases
