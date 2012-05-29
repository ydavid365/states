include:
  - salt
  - rc
  - bash
  - pacman
  - logrotate
  - iptables
  - ssh

corepkgs:
  pkg.installed:
    - names:
      - inetutils
      - htop
      - lsof
      - ps_mem

unneededpkgs:
  pkg.purged:
    - names:
      - jfsutils
      - nano
      - pcmciautils
      - ppp
      - reiserfsprogs
      - wpa_supplicant
      - xfsprogs
      - cryptsetup
      - lvm2
      - device-mapper
      - heirloom-mailx
      - licenses
      - mdadm
      - net-tools
      - netcfg
      - unzip
      - mtr
      - sudo
      - wget
      - whois
      - dbus-core
      - libfetch
      - libidn
      - libpcap
      - libusb-compat
