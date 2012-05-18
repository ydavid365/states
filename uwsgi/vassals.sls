{% for vassal in pillar["uwsgi_vassals"] %}

{% set venv = "/usr/local/venv/" ~ vassal.name %}

{{ venv }}:
  virtualenv.managed:
    - system_site_packages: true

/etc/uwsgi/vassals/{{ vassal.name }}.ini:
  file.managed:
    - source: salt://uwsgi/vassal.ini.jinja
    - template: jinja
    - defaults:
        module: {{ vassal.module }}
        venv: {{ venv }}
        processes: {{ vassal.processes or 2 }}
    - require:
      - file: /etc/uwsgi/vassals
      - file: /var/run/uwsgi
      - file: /var/log/uwsgi
      - virtualenv: {{ venv }}

{% endfor %}
