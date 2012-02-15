include:
  - salt

/etc/salt/master:
  file:
    - managed
    - mode: 640
    - source: salt://salt/master.config
    - require:
      - pkg: salt

salt-master:
  service:
    - running
    - enabled: True
    - watch: /etc/salt/master
    - require:
      - pkg: salt
