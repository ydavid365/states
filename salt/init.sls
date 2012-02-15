salt:
  pkg:
    - installed

salt-config-templates:
  file:
    - absent
    - names:
      - /etc/salt/master.template
      - /etc/salt/minion.template
    - require:
      - pkg: salt

/etc/salt/minion:
  file:
    - managed
    - mode: 640
    - source: salt://salt/minion.config
    - require:
      - pkg: salt

salt-minion:
  service:
    - running
    - enabled: True
    - watch:
      - /etc/salt/minion
    - require:
      - pkg: salt
