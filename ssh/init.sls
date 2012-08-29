openssh:
  pkg.installed

sshd.socket:
  service.running:
    - enable: True
    - provider: systemd
    - watch:
      - file: /etc/ssh/sshd_config

/etc/ssh/sshd_config:
  file.managed:
    - source: salt://ssh/sshd_config.jinja
    - template: jinja
    - defaults:
        allowed_users: []
{% if pillar['allowed_users'] %}
    - context:
        allowed_users: {{ pillar['allowed_users'] }}
{% endif %}
