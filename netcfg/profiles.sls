include:
  - netcfg

{% for profile in pillar['netcfg_profiles'] %}
/etc/network.d/{{ profile.name }}:
  file.managed:
    - source: salt://netcfg/profile.jinja
    - template: jinja
    - defaults:
        name: {{ profile.name }}
        security: {{ profile.security }}
        essid: {{ profile.essid }}
        key: {{ profile.key }}
        key_mgmt: {{ profile.key_mgmt }}
        eap: {{ profile.eap }}
        identity: {{ profile.identity }}
        password: {{ profile.password }}
{% endfor %}
