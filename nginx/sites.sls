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
        default: {{ site.default or False }}
        autoindex: {{ site.autoindex or False }}
        static_prefix: {{ site.static_prefix or False }}
        aliases: {{ site.aliases or [] }}
        subdomain_to_path_alias: {{ site.subdomain_to_path_alias or False }}
        upstreams: {{ site.upstreams or [] }}
        uwsgi: {{ site.uwsgi or False }}
        append_html_to_path: {{ site.append_html_to_path or False }}
    - require:
      - file: /etc/nginx/conf.d
{% endfor %}
