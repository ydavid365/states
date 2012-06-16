base:
  '*':
    - core
    - pacman.uk
    - users
  'sodium.uggedal.com':
    - server
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
    - server
    - tarsnap.backup
    - nginx.sites
    - uwsgi.vassals
    - redis
    - postgresql.databases
  'aluminium.uggedal.com':
    - zsh
    - acpid
    - xorg.nvidia
    - development
