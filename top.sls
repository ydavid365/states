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
    - tarsnap.backup
    - nginx.sites
    - going
    - uwsgi.vassals
    - redis
    - postgresql.python
    - postgresql.databases
    - phantomjs
  'magnesium.uggedal.com':
    - tarsnap.backup
    - nginx.sites
    - redis
