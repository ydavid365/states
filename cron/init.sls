cronie:
  pkg:
    - installed
  service.running:
    - enable: True
    - require:
      - pkg: cronie

/etc/anacrontab:
  file.managed:
    - source: salt://cron/anacrontab
