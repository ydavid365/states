python2-psycopg2:
  pkg.installed:
    - require:
      - pkg: postgresql
