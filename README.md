[Salt][s] states for [uggedal.com][u].

TODO
----

### Essential

* Put private data in pillar repo.
* Port from extend to `requisite_in` in `nginx/site.sls`.
* Users.
* Nginx.
  - Possibly use glob matching for site watch directly in nginx state.
  - Aliases.
  - Upstreams with proxy.
  - Default vhost (with dererred).
  - Mediaroot handling with favicon alias.
  - Rewrite missing html extension.
  - SSL support.
* Pacman repo served by nginx.
  - Package signing for pkg.uggedal.com.
  - Wrapper script for adding/updating/purging old packages.
* Turn on signature checking for all packages if possible.

### Server

* SSH
  - Authorized keys for normal user.
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
