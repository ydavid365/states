uwsgi:
  pkg:
    - installed
  service.running:
    - name: uwsgi
    - enable: True
    - watch:
      - file: /etc/uwsgi/emperor.ini

/etc/uwsgi/common.ini:
  file.managed:
    - source: salt://uwsgi/common.ini
    - require:
      - pkg: uwsgi

/etc/uwsgi/emperor.ini:
  file.managed:
    - source: salt://uwsgi/emperor.ini
    - require:
      - file: /etc/uwsgi/common.ini

/var/run/uwsgi:
  file.directory:
    - user: http
    - group: http

/var/log/uwsgi:
  file.directory:
    - user: http
    - group: log

/etc/logrotate.d/uwsgi:
  file.managed:
    - source: salt://uwsgi/logrotate.conf
    - require:
      - pkg: uwsgi
