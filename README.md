[Salt][s] states for [uggedal.com][u].

TODO
----

* Users.
* Nginx.
  - Extra mime types.
  - Logrotate.
  - SSL support.
  - Aliases.
  - Upstreams with proxy.
  - Default vhost (with dererred).
  - Mediaroot handling with favicon alias and possibly no access log.
  - Rewrite missing html extension.
* Pacman repo served by nginx.
  - Add pkg.uggedal.com to pacman.conf.
  - Install salt packages from pkg.uggedal.com.
  - Package singing.
  - Wrapper script for adding/updating/purging old packages.

[s]: http://saltstack.org
[u]: http://uggedal.com
