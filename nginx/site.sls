{% macro nginx_site(fqdn, root, autoindex=False) %}
include:
  - nginx

/etc/nginx/conf.d/{{ fqdn }}.conf:
  file:
    - managed
    - source: salt://nginx/site.conf.jinja
    - template: jinja
    - defaults:
        fqdn: {{ fqdn }}
        root: {{ root }}
        autoindex: {{ autoindex }}
    - require:
      - file: /etc/nginx/conf.d

extend:
  nginx:
    service:
      - watch:
        - file: /etc/nginx/conf.d/{{ fqdn }}.conf
{% endmacro %}
