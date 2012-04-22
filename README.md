[Salt][s] states for [uggedal.com][u].

TODO
----

### Essential

* Pacman repo served by nginx.
  - Package signing for pkg.uggedal.com.
  - Wrapper script for adding/updating/purging old packages.
* Turn on signature checking for all packages if possible.


### Server

* Nginx.
  - Possibly use glob matching for site watch directly in nginx state.
  - Aliases.
  - Upstreams with proxy.
  - Default vhost (with dererred).
  - Mediaroot handling with favicon alias.
  - Rewrite missing html extension.
  - SSL support.
* Tarsnap
* Git
* Redis
* Postgresql
* Phantom.js (headlesss from 1.5)
* Monit (or alternative)
* Venv
* Gunicorn (use /etc/rc.d/gunicorn-name and /etc/gunicorn/name.conf)


### Desktop

* Mac (keyboard, pommed)
* Wireless
* Xorg
* Nvidia
* Spectrwm or DWM with dmenu.
* Mplayer
* Spotify
* Urxvt or st.


[s]: http://saltstack.org
[u]: http://uggedal.com
