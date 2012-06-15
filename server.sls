include:
  - kernel.xen
  - grub
  - fstab

unneededserverpkgs:
  pkg.purged:
    - names:
      - wpa_supplicant
      - device-mapper
      - netcfg
      - unzip
      - dbus-core
