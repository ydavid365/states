include:
  - salt

/etc/salt/master:
  file.managed:
    - mode: 640
    - source: salt://salt/master.config
    - require:
      - pkg: salt

salt-master:
  service.running:
    - enabled: True
    - provider: systemd
    - watch:
      - file: /etc/salt/master
    - require:
      - pkg: salt
