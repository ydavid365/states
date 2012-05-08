include:
  - tarsnap

/etc/tarsnap/backup.conf:
  file.managed:
    - source: salt://tarsnap/backup.conf.jinja
    - template: jinja
    - defaults:
        cmds: {{ pillar['tarsnap_backup_cmds'] }}
        paths: {{ pillar['tarsnap_backup_paths'] }}
    - require:
      - pkg: tarsnap

/usr/local/bin/tarsnap-backup:
  file.managed:
    - source: salt://tarsnap/tarsnap-backup
    - mode: 755
    - require:
      - file: /etc/tarsnap/backup.conf
  cron.present:
    - minute: 10
    - require:
      - file: /usr/local/bin/tarsnap-backup

/usr/local/bin/tarsnap-prune:
  file.managed:
    - source: salt://tarsnap/tarsnap-prune
    - mode: 755
    - require:
      - cron: /usr/local/bin/tarsnap-backup
  cron.present:
    - hour: 6
    - minute: 40
    - require:
      - file: /usr/local/bin/tarsnap-prune
