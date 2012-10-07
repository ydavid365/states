include:
  - nginx

{% for site in pillar['nginx_sites'] %}
/etc/nginx/conf.d/{{ site.fqdn }}.conf:
  file.managed:
    - source: salt://nginx/site.conf.jinja
    - template: jinja
    - defaults:
        index: {{ loop.index0 }}
    - require:
      - file: /etc/nginx/conf.d
{% endfor %}
