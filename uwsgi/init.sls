uwsgi:
  pkg:
    - installed
  file.managed:
    - name: /etc/uwsgi/uwsgi.ini
    - source: salt://uwsgi/uwsgi.ini
    - require:
      - pkg: uwsgi
      - file: /etc/uwsgi/vassals
  service.running:
    - name: uwsgid
    - enable: True
    - watch:
      - file: uwsgi

/etc/uwsgi/vassals:
  file.directory:
    - require:
      - pkg: uwsgi

/var/run/uwsgi:
  file.directory:
    - user: http
    - group: http

/var/log/uwsgi:
  file.directory:
    - user: http
    - group: log

/etc/uwsgi/apps:
  file.absent:
    - require:
      - pkg: uwsgi
