include:
  - rc

extend:
  /etc/rc.conf:
    file:
      - context:
          daemons: 'syslog-ng network sshd ntpd crond ufw nginx @salt-master @salt-minion'
