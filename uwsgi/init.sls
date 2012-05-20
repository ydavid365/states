uwsgi:
  pkg:
    - installed
  file.managed:
    - name: /etc/uwsgi/emperor.ini
    - source: salt://uwsgi/emperor.ini
    - require:
      - pkg: uwsgi
  service.running:
    - name: uwsgi
    - enable: True
    - watch:
      - file: uwsgi

/var/run/uwsgi:
  file.directory:
    - user: http
    - group: http

/var/log/uwsgi:
  file.directory:
    - user: http
    - group: log
