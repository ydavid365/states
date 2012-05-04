redis:
  pkg:
    - installed
  file.managed:
    - name: /etc/redis.conf
    - source: salt://redis/redis.conf.jinja
    - template: jinja
    - defaults:
        bind: 127.0.0.1
        port: 6379
    - require:
      - pkg: redis
  service.running:
    - enable: True
    - watch:
      - file: redis
