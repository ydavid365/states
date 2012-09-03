{% for tmpfile in pillar.tmpfiles %}
/etc/tmpfiles.d/{{ tmpfile.name }}.conf:
  file.managed:
    - source: salt://tmpfiles/tmpfile.conf.jinja
    - template: jinja
    - context:
        type: {{ tmpfile.type }}
        path: {{ tmpfile.path }}
        mode: "{{ tmpfile.mode or '-' }}"
        uid: "{{ tmpfile.uid or '-' }}"
        gid: "{{ tmpfile.gid or '-' }}"
        age: "{{ tmpfile.age or '-' }}"
        argument: "{{ tmpfile.argument or '-' }}"
{% endfor %}
