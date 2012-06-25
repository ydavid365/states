include:
  - postgresql

{% for name in pillar['postgresql_databases'] %}
{% set owner = name %}
postgresql_createuser {{ owner }}:
  cmd.run:
    - name: createuser --no-superuser --no-createdb --no-createrole {{ owner }}
    - unless: psql --tuples-only -c 'SELECT rolname FROM pg_catalog.pg_roles;' | grep '^ {{ owner }}$'
    - user: postgres
    - cwd: '/'
    - require:
      - service: postgresql

postgresql_createdb {{ name }}:
  cmd.run:
    - name: createdb -O {{ owner }} {{ name }}
    - unless: psql -ltA | grep '^{{ name }}|'
    - user: postgres
    - cwd: '/'
    - require:
      - cmd: postgresql_createuser {{ owner }}
{% endfor %}
