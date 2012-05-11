include:
  - going

{% for name, cmd in pillar['going_children'] %}
/etc/going.d/{{ name }}:
  file.managed:
    - source: salt://going/child.conf.jinja
    - template: jinja
    - defaults:
        cmd: {{ cmd }}
    - require:
      - pkg: going
{% endfor %}

# TODO: Send going SIGHUP when files are added. Need:
#       - controll interface to find PID, or
#       - inotify support.
