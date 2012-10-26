cronie:
  pkg:
    - installed
  service.running:
    - enable: True
    - provider: systemd
    - require:
      - pkg: cronie

/etc/anacrontab:
  file.managed:
    - source: salt://cron/anacrontab
