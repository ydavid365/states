uwsgi:
  pkg:
    - installed
  service.running:
    - name: uwsgi
    - enable: True
    - provider: systemd
    - watch:
      - file: /etc/uwsgi/common.ini

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
