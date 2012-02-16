/etc/rc.conf:
  file:
    - sed
    - before: '^TIMEZONE=$'
    - after: 'TIMEZONE="Europe/Oslo"'
    - backup: null
