base:
  '*':
    - core
    - users
  'sodium.uggedal.com':
    - pacman.uk
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
    - pacman.uk
    - server
    - tarsnap.backup
    - nginx.sites
    - uwsgi.vassals
    - redis
    - postgresql.databases
  'aluminium.uggedal.com':
    - pacman.no
    - zsh
    - acpid
    - xorg.nvidia
    - development
    - netcfg.profiles
  'silicon.uggedal.com':
    - pacman.no
    - zsh
    - acpid
    - xorg.intel
    - development
    - netcfg.profiles
