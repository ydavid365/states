include:
  - iptables

extend:
  /etc/iptables/iptables.rules:
    file:
      - context:
          accept_tcp_ports: [80]
