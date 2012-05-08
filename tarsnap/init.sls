tarsnap:
  pkg:
    - installed
  file.managed:
    - name: /etc/tarsnap/tarsnap.conf
    - source: salt://tarsnap/tarsnap.conf.jinja
    - template: jinja
    - defaults:
        keyfile: /etc/tarsnap/tarsnap.key
    - require:
      - pkg: tarsnap
