iptables:
  pkg:
    - installed
  service:
    - running
    - enabled: True
    - require:
      - pkg: iptables

/etc/iptables/iptables.rules:
  file:
    - managed
    - source: salt://iptables/rules.jinja
    - template: jinja
    - defaults:
        accept_tcp_ports: [22]
        accept_udp_ports: []
    - require:
      - pkg: iptables

iptables-restore < /etc/iptables/iptables.rules:
  cmd:
    - wait
    - watch:
      - file: /etc/iptables/iptables.rules
