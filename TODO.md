Essential
---------

* Pacman repo served by nginx:
  - [Package signing](http://jasonwryan.com/blog/2012/03/23/key/)
    for pkg.uggedal.com.
  - Wrapper script for adding/updating/purging old packages.
* Turn on signature checking for all packages if possible.


Server
------

* Nginx:
  - Aliases.
  - Default vhost (with dererred).
  - Mediaroot handling with favicon alias.
  - Rewrite missing html extension.
  - SSL support.
* Git:
  - Password protected cgit instance served through fcgiwrap.
* Venv.
* Gunicorn:
  - Config templating/macro (/etc/gunicorn/name.conf).
  - Init script (/etc/rc.d/gunicorn-name) or going.
  - Unprivileged user.
  - Logging (with rotation sending SIGHUP to reopen files).


Desktop
-------

* Mac (keyboard, pommed).
* Wireless.
* Xorg.
* Nvidia.
* Spectrwm, monsterwm or DWM with dmenu.
* Mplayer.
* Spotify.
* Urxvt or st.
* Sxiv.
* Mupdf.
* Unclutter.
