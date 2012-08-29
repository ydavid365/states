/etc/hostname:
  file.managed:
    - source: salt://rc/hostname.jinja
    - template: jinja

/etc/hosts:
  file.managed:
    - source: salt://rc/hosts.jinja
    - template: jinja
    - defaults:
        hostname: {{ grains['host'] }}
        fqdn: {{ grains['fqdn'] }}

/etc/vconsole.conf:
  file.managed:
    - source: salt://rc/vconsole.conf.jinja
    - template: jinja
    - defaults:
        keymap: us

/etc/timezone:
  file.managed:
    - source: salt://rc/timezone.jinja
    - template: jinja
    - defaults:
        timezone: 'Europe/Oslo'

/etc/localtime:
  file.symlink:
    - target: /usr/share/zoneinfo/Europe/Oslo

/etc/locale.conf:
  file.managed:
    - source: salt://rc/locale.conf.jinja
    - template: jinja
    - defaults:
        locale: 'en_US.UTF-8'

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
