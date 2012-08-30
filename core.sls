include:
  - salt
  - systemd
  - bash
  - pacman
  - logrotate
  - iptables
  - ntp
  - ssh
  - cron
  - cron.jobs
  - extra_packages

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
