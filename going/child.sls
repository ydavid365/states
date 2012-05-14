{% macro going_child(name, cmd, cwd=None)  %}
include:
  - going

/etc/going.d/{{ name }}:
  file.managed:
    - source: salt://going/child.conf.jinja
    - template: jinja
    - defaults:
        cmd: {{ cmd }}
        cwd: {{ cwd }}
    - require:
      - pkg: going
{% endmacro %}

# TODO: Send going SIGHUP when files are added. Need:
#       - controll interface to find PID, or
#       - inotify support.
