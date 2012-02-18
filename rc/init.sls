/etc/rc.conf:
  file:
    - managed
    - source: salt://rc/rc.conf.jinja
    - template: jinja
    - defaults: {
      timezone: 'Europe/Oslo',
      locale: 'en_US.UTF-8',
      hostname: 'localhost',
      daemons: 'syslog-ng network sshd ntpd crond' }

/etc/hosts:
  file:
    - managed
    - source: salt://rc/hosts.jinja
    - template: jinja
    - defaults: {
      hostname: 'localhost',
      fqdn: 'localhost.localdomain' }
