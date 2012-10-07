{% for tmpfile in pillar.get('tmpfiles', []) %}
/etc/tmpfiles.d/{{ tmpfile.name }}.conf:
  file.managed:
    - source: salt://tmpfiles/tmpfile.conf.jinja
    - template: jinja
    - context:
        index: {{ loop.index0 }}
{% endfor %}
