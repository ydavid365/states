dhcpcd:
  pkg.installed

"dhcpcd@":
  service.enabled:
    - provider: systemd

"dhcpcd@eth0":
  service.running:
    - provider: systemd
    - require:
      - service: "dhcpcd@"

