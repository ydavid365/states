[Salt][s] states for [uggedal.com][u].

TODO
----

### Essential

* Pacman repo served by nginx.
  - [Package signing](http://jasonwryan.com/blog/2012/03/23/key/)
    for pkg.uggedal.com.
  - Wrapper script for adding/updating/purging old packages.
* Turn on signature checking for all packages if possible.


### Server

* Nginx.
  - Aliases.
  - Upstreams with proxy.
  - Default vhost (with dererred).
  - Mediaroot handling with favicon alias.
  - Rewrite missing html extension.
  - SSL support.
* Tarsnap
  - Backup script.
  - Pruning.
* Git
* Monit (or alternative)
* Venv
* Gunicorn (use /etc/rc.d/gunicorn-name and /etc/gunicorn/name.conf)


### Desktop

* Mac (keyboard, pommed)
* Wireless
* Xorg
* Nvidia
* Spectrwm, monsterwm or DWM with dmenu.
* Mplayer
* Spotify
* Urxvt or st.
* Sxiv
* Mupdf
* Unclutter


[s]: http://saltstack.org
[u]: http://uggedal.com
