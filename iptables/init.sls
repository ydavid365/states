iptables:
  pkg:
    - installed
  service.running:
    - enabled: True
    - require:
      - pkg: iptables

/etc/iptables/iptables.rules:
  file.managed:
    - source: salt://iptables/rules.jinja
    - template: jinja
    - context:
        accept_tcp_ports: {{ pillar.accept_tcp_ports or [] }}
        accept_tcp_from: {{ pillar.accept_tcp_from or [] }}
        limit_tcp_ports: {{ pillar.limit_tcp_ports or [22] }}
    - require:
      - pkg: iptables

iptables-restore < /etc/iptables/iptables.rules:
  cmd.wait:
    - watch:
      - file: /etc/iptables/iptables.rules
