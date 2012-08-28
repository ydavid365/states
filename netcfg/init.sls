netcfg:
  pkg:
    - installed

netcfg-service-file:
  file.symlink:
    - name: "/etc/systemd/system/netcfg@{{ pillar['netcfg_profile'] }}.service"
    - target: "/usr/lib/systemd/system/netcfg@{{ pillar['netcfg_profile'] }}.service"

netcfg-service:
  service.running:
    - name: "netcfg@{{ pillar['netcfg_profile'] }}"
    - enable: True
    - provider: systemd
    - require:
      - file: netcfg-service-file
