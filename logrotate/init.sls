/etc/logrotate.conf:
  file:
    - managed
    - source: salt://logrotate/logrotate.conf
