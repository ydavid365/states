include:
  - uwsgi

{% for vassal in pillar["uwsgi_vassals"] %}

{{ vassal.name }}:
  pkg.installed

/etc/uwsgi/vassals/{{ vassal.name }}.ini:
  file.managed:
    - source: salt://uwsgi/vassal.ini.jinja
    - template: jinja
    - defaults:
        chdir: {{ vassal.chdir or False }}
        django: {{ vassal.django or False }}
        module: {{ vassal.module }}
        processes: {{ vassal.processes or 2 }}
        idle: {{ vassal.idle or False }}
        global: {{ vassal.global or False }}
    - require:
      - pkg: {{ vassal.name }}
      - file: /etc/uwsgi/common.ini
      - file: /var/run/uwsgi
      - file: /var/log/uwsgi

{% endfor %}
