netcfg:
  pkg:
    - installed
  file.managed:
    - name: /etc/conf.d/netcfg
    - source: salt://netcfg/netcfg.conf.jinja
    - template: jinja
  service.running:
    - enable: True
    - provider: systemd
    - require:
      - file: netcfg
      - file: netcfg-service-override

netcfg-service-override:
  file.managed:
    - name: /etc/systemd/system/netcfg.service
    - source: salt://netcfg/netcfg.service.jinja
    - template: jinja

netcfg-wireless-deps:
  pkg.installed:
    - names:
      - wireless_tools
      - wpa_supplicant
