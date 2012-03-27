/etc/rc.conf:
  file:
    - managed
    - source: salt://rc/rc.conf.jinja
    - template: jinja
    - defaults:
        timezone: 'Europe/Oslo'
        locale: 'en_US.UTF-8'
        hostname: 'localhost'
        daemons: 'syslog-ng network sshd ntpd crond iptables'
    - context:
        daemons: {{ pillar['daemons'] }}

/etc/hosts:
  file:
    - managed
    - source: salt://rc/hosts.jinja
    - template: jinja
    - defaults:
        hostname: 'localhost'
        fqdn: 'localhost.localdomain'

/etc/locale.gen:
  file:
    - managed
    - source: salt://rc/locale.gen.jinja
    - template: jinja
    - defaults:
        locales:
          - 'en_US.UTF-8 UTF-8'

locale-gen:
  cmd:
    - wait
    - watch:
      - file: /etc/locale.gen
