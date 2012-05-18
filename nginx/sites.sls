include:
  - nginx

{% for site in pillar['nginx_sites'] %}
/etc/nginx/conf.d/{{ site.fqdn }}.conf:
  file.managed:
    - source: salt://nginx/site.conf.jinja
    - template: jinja
    - defaults:
        fqdn: {{ site.fqdn }}
        root: {{ site.root }}
        autoindex: {{ site.autoindex or False }}
        static_prefix: {{ site.static_prefix or False }}
        aliases: {{ site.aliases or [] }}
        upstreams: {{ site.upstreams or [] }}
        uwsgi: {{ site.uwsgi or False }}
    - require:
      - file: /etc/nginx/conf.d
{% endfor %}
