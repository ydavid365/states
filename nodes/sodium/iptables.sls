include:
  - iptables

extend:
  /etc/iptables/iptables.rules:
    file:
      - context:
          accept_tcp_ports: [22, 80]
          accept_udp_ports: []
