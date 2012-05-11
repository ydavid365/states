going:
  pkg.installed

/etc/inittab:
  file.append:
    - text: |
        go:2345:respawn:/usr/sbin/going

init q:
  cmd.wait:
    - watch:
      - file: /etc/inittab
