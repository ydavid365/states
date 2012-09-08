uwsgi:
  pkg:
    - installed

/etc/uwsgi:
  file.directory:
    - mode: 640
    - user: http
    - group: http

/etc/uwsgi/common.ini:
  file.managed:
    - source: salt://uwsgi/common.ini
    - mode: 640
    - user: http
    - group: http
    - require:
      - pkg: uwsgi
      - file: /etc/uwsgi

/var/log/uwsgi:
  file.directory:
    - user: http
    - group: log

/etc/logrotate.d/uwsgi:
  file.managed:
    - source: salt://uwsgi/logrotate.conf
    - require:
      - pkg: uwsgi
