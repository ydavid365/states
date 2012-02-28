[Salt][s] states for [uggedal.com][u].

TODO
----

### Essential

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

### Server

* SSH
* Tarsnap
* Git
* Postgresql
* Redis
* Xvfb (or check status of totally headless phantom.js)
* Monit (or alternative)
* Venv
* Gunicorn (use /etc/rc.d/gunicorn-name and /etc/gunicorn/name.conf)
* Taskwarrior (or abandon for git repo with notes)

### Desktop

* Mac (keyboard, pommed)
* Wireless
* Xorg
* Nvidia
* Awesome
* Mplayer
* Spotify
* Urxvt (or suckless alternative)

[s]: http://saltstack.org
[u]: http://uggedal.com
