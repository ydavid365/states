{% for pkg in pillar['extra_packages'] %}
{{ pkg }}:
  pkg.installed
{% endfor %}
