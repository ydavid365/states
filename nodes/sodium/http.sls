{% from "nginx/site.sls" import nginx_site %}

{{ nginx_site(grains["fqdn"], "/srv/http", autoindex=True) }}
