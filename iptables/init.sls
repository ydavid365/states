iptables:
  pkg.installed
  service.running:
    - enabled: True
    - require:
      - pkg: iptables

/etc/iptables/iptables.rules:
  file.managed:
    - source: salt://iptables/rules.jinja
    - template: jinja
    - defaults:
        accept_tcp_ports: []
        limit_tcp_ports: [22]
        accept_udp_ports: []
        limit_udp_ports: []
{% if pillar['accept_tcp_ports'] %}
    - context:
        accept_tcp_ports: {{ pillar['accept_tcp_ports'] }}
{% endif %}
    - require:
      - pkg: iptables

iptables-restore < /etc/iptables/iptables.rules:
  cmd.wait:
    - watch:
      - file: /etc/iptables/iptables.rules
