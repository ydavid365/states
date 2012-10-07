iptables:
  pkg:
    - installed
  service.enabled:
    - provider: systemd
    - require:
      - pkg: iptables

/etc/iptables/iptables.rules:
  file.managed:
    - source: salt://iptables/rules.jinja
    - template: jinja
    - context:
        accept_tcp_ports: {{ pillar.get('accept_tcp_ports', []) }}
        accept_tcp_from: {{ pillar.get('accept_tcp_from', []) }}
        limit_tcp_ports: {{ pillar.get('limit_tcp_ports', [22]) }}
    - require:
      - pkg: iptables

iptables-restore < /etc/iptables/iptables.rules:
  cmd.wait:
    - watch:
      - file: /etc/iptables/iptables.rules
