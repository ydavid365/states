{% for vassal in pillar["uwsgi_vassals"] %}

/usr/local/venv/{{ vassal.name }}:
  virtualenv.managed:
    - system_site_packages: true

/etc/uwsgi/vassals/{{ vassal.name }}.ini:
  file.managed:
    - source: salt://uwsgi/vassal.ini.jinja
    - template: jinja
    - defaults:
        module: {{ vassal.module }}
        processes: {{ vassal.processes or 2 }}
    - require:
      - file: /etc/uwsgi/vassals
      - file: /var/run/uwsgi
      - file: /var/log/uwsgi
      - virtualenv: /usr/local/venv/{{ vassal.name }}

{% endfor %}
