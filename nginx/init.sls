nginx:
  pkg.installed

nginx-rc:
  service.running:
    - name: nginx
    - enable: True
    - watch:
      - file: /etc/nginx/nginx.conf
      - file: /etc/nginx/mime.types
      - file: /etc/nginx/conf.d/*.conf

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://nginx/nginx.conf.jinja
    - template: jinja
    - defaults:
        worker_user: http
        worker_processes: 1
    - require:
      - pkg: nginx

/etc/nginx/mime.types:
  file.managed:
    - source: salt://nginx/mime.types
    - require:
      - pkg: nginx

/etc/logrotate.d/nginx:
  file.managed:
    - source: salt://nginx/logrotate.conf
    - require:
      - pkg: nginx

nginx-cruft:
  file.absent:
    - names:
      - /etc/nginx/html
      - /etc/nginx/logs

/etc/nginx/conf.d:
  file.directory:
    - require:
      - pkg: nginx

/srv/http:
  file.directory:
    - user: root
    - group: http
    - mode: 750
