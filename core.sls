include:
  - salt
  - rc
  - bash
  - pacman
  - logrotate
  - iptables
  - ssh
  - cron.jobs
  - extra_packages

corepkgs:
  pkg.installed:
    - names:
      - ntp
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
      - xfsprogs
      - cryptsetup
      - lvm2
      - heirloom-mailx
      - licenses
      - mdadm
      - net-tools
      - mtr
      - sudo
      - wget
      - whois
      - libfetch
      - libidn
      - libpcap
      - libusb-compat
