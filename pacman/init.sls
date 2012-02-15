/etc/pacman.conf:
  file:
    - sed
    - before: Never
    - after: Optional TrustAll
    - limit: '^SigLevel = '
