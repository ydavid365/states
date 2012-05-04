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

/etc/sysctl.conf:
  file.append:
    text: |
      # More optimistic malloc for Redis forks
      vm.overcommit_memory = 1
