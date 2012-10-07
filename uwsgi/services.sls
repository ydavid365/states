include:
  - uwsgi

{% for service in pillar.get('uwsgi_services', []) %}

{{ service.name }}:
  pkg.installed

"uwsgi@{{ service.name }}":
  service.running:
    - enable: True
    - provider: systemd
    - watch:
      - file: /etc/uwsgi/common.ini
      - file: /etc/uwsgi/{{ service.name }}.ini
    - require:
      - file: /etc/uwsgi/{{ service.name }}.ini

/etc/uwsgi/{{ service.name }}.ini:
  file.managed:
    - source: salt://uwsgi/service.ini.jinja
    - template: jinja
    - mode: 640
    - user: http
    - group: http
    - defaults:
        index: {{ loop.index0 }}
    - require:
      - pkg: {{ service.name }}
      - file: /etc/uwsgi/common.ini
      - file: /var/log/uwsgi

{% endfor %}
