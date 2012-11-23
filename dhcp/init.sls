dhcpcd:
  pkg.installed

"dhcpcd@":
  service.enabled

"dhcpcd@eth0":
  service.running:
    - require:
      - service: "dhcpcd@"

