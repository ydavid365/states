[Salt][s] states for [uggedal.com][u]. Developed for Arch Linux, but most
states can easily be generalized.

Expected Pillar data
--------------------

Private data is stored in [pillar][p]. To make these states work you'll
have to create pillar data following this structure:


    # List of all daemons which should be enabled at boot:
    daemons:
      - syslog-ng
      - network
      - sshd
      - ntpd
      - crond
      - iptables
      - uwsgi
      - salt-minion

    # List of users allowed to log in with ssh:
    allowed_users:
      - myunprivilegeduser

    # List of TCP ports to open in iptables:
    accept_tcp_ports:
      - 80

    # List of nginx sites (static and/or proxied over uwsgi or http protocol):
    nginx_sites:
      - fqdn: mysite.com
        aliases:
          - www.mysite.com
        default: true # Default vhost for the listen IP.
        root: /srv/http/mysite
        uwsgi: true # True for uwsgi, false for http
        upstreams: ["unix:/var/run/uwsgi/mysite.sock"]
        static_prefix: /static # Prefix for paths to give far future expires

    # List of uWSGI vassals:
    uwsgi_vassals:
      - name: mysite
        module: "mysite:app"
        processes: 4

    # List of cmds to run and take backup of with tarsnap:
    tarsnap_backup_cmds:
      - /usr/local/venv/mysite/bin/manage backup > all.json

    # List of paths to take backup of with tarsnap:
    tarsnap_backup_paths:
      - /etc
      - /srv/http/mysite/static/uploads


[s]: http://saltstack.org
[u]: http://uggedal.com
[p]: http://readthedocs.org/docs/salt/en/latest/topics/pillar/index.html
