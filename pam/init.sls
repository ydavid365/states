/etc/security/limits.conf:
  file.managed:
    - source: salt://pam/limits.conf
