postgresql:
  pkg:
    - installed
  file.managed:
    - name: /var/lib/postgres/data/postgresql.conf
    - source: salt://postgresql/postgresql.conf.jinja
    - mode: 644
    - template: jinja
    - defaults:
        listen_addresses: 127.0.0.1
        max_connections: 100
        shared_buffers: 24MB
        effective_cache_size: 128MB
        timezone: 'Europe/Oslo'
    - require:
      - pkg: postgresql
  service.running:
    - enable: True
    - watch:
      - file: postgresql
