include:
  - netcfg

netcfg-wireless-deps:
  pkg.installed:
    - names:
      - wireless_tools
      - wpa_supplicant
