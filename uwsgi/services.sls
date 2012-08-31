include:
  - uwsgi

{% for service in pillar["uwsgi_services"] %}

{{ service.name }}:
  pkg.installed

/etc/uwsgi/services/{{ service.name }}.ini:
  file.managed:
    - source: salt://uwsgi/service.ini.jinja
    - template: jinja
    - mode: 640
    - user: http
    - group: http
    - defaults:
        chdir: {{ service.chdir or False }}
        django: {{ service.django or False }}
        module: {{ service.module }}
        processes: {{ service.processes or 2 }}
        idle: {{ service.idle or False }}
        global: {{ service.global or False }}
    - require:
      - pkg: {{ service.name }}
      - file: /etc/uwsgi/common.ini
      - file: /var/log/uwsgi

{% endfor %}
