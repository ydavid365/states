{% from "nginx/site.sls" import nginx_site %}

{{ nginx_site("pkg.uggedal.com",
              "/srv/http/pkg",
              autoindex=True) }}
