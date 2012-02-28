include:
  - rc

extend:
  /etc/rc.conf:
    file:
      - context:
          daemons: 'syslog-ng network sshd ntpd crond iptables nginx salt-master salt-minion'
