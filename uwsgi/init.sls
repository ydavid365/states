uwsgi:
  pkg:
    - installed

"uwsgi@":
  service.enabled:
    - provider: systemd

/etc/uwsgi/common.ini:
  file.managed:
    - source: salt://uwsgi/common.ini
    - mode: 640
    - user: http
    - group: http
    - require:
      - pkg: uwsgi

/var/log/uwsgi:
  file.directory:
    - user: http
    - group: log

/etc/logrotate.d/uwsgi:
  file.managed:
    - source: salt://uwsgi/logrotate.conf
    - require:
      - pkg: uwsgi
