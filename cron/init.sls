cronie:
  pkg:
    - installed
  service.running:
    - enable: True
    - provider: systemd
    - require:
      - pkg: cronie
