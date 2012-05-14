{% from "going/child.sls" import going_child %}

{% for instance in pillar["gunicorn_instances"] %}

{% set venv = "/usr/local/venv/" ~ instance.name %}
{% set src = "/usr/local/src/" ~ instance.name %}
{% set socket = "/var/run/gunicorn/" ~ instance.name  ~ ".sock" %}
{% set log = "/var/log/gunicorn/" ~ instance.name  ~ ".log" %}

{% if instance.django %}
  {% set gunicorn = "gunicorn_django" %}
{% else %}
  {% set gunicorn = "gunicorn" %}
{% endif %}

{{ venv }}:
  virtualenv.managed:
    - system_site_packages: true

/etc/gunicorn.d/{{ instance.name }}.conf:
  file.managed:
    - source: salt://gunicorn/instance.conf.jinja
    - template: jinja
    - defaults:
        name: {{ instance.name }}
        socket: {{ socket }}
        log: {{ log }}
        workers: {{ instance.workers or 2 }}
        timeout: {{ instance.timeout or 30 }}
    - require:
      - file: gunicorn-dirs
      - virtualenv: {{ venv }}
    - require_in:
      - file: /etc/going.d/{{ "gunicorn-" ~ instance.name }}

{{ going_child("gunicorn-" ~ instance.name,
               venv ~ "/bin/python" ~ " " ~ "/usr/bin/" ~ gunicorn ~
               " -c /etc/gunicorn.d/" ~ instance.name ~ ".conf" ~
               " " ~ instance.module,
               cwd=src) }}

# TODO: Handle require against gunicorn config for going_child.
# TODO: Nginx proxy setup.

{% endfor %}
