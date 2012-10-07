include:
  - netcfg

{% for profile in pillar.get('netcfg_profiles', []) %}
/etc/network.d/{{ profile.name }}:
  file.managed:
    - source: salt://netcfg/profile.jinja
    - template: jinja
    - defaults:
        index: {{ loop.index0 }}
{% endfor %}
