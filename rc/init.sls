/etc/rc.conf:
  file.managed:
    - source: salt://rc/rc.conf.jinja
    - template: jinja
    - defaults:
        timezone: 'Europe/Oslo'
        locale: 'en_US.UTF-8'
        hostname: 'localhost'
        daemons:
          - syslog-ng
          - network
          - sshd
          - ntpd
          - crond
          - iptables
{% if pillar['daemons'] %}
    - context:
        daemons: {{ pillar['daemons'] }}
{% endif %}

/etc/hosts:
  file.managed:
    - source: salt://rc/hosts.jinja
    - template: jinja
    - defaults:
        hostname: {{ grains['host'] }}
        fqdn: {{ grains['fqdn'] }}

/etc/locale.gen:
  file.managed:
    - source: salt://rc/locale.gen.jinja
    - template: jinja
    - defaults:
        locales:
          - 'en_US.UTF-8 UTF-8'

locale-gen:
  cmd.wait:
    - watch:
      - file: /etc/locale.gen
