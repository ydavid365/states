Essential
---------

* Pacman repo served by nginx:
  - [Package signing](http://jasonwryan.com/blog/2012/03/23/key/)
    for pkg.uggedal.com.
  - Wrapper script for adding/updating/purging old packages.
* Turn on signature checking for all packages if possible.


Server
------

* Salt:
  - Open firewall.
  - Restrict access to known IP-addresses.
* Nginx:
  - Default vhost (with dererred).
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


Deploy (MQ)
-----------

* Makefile or bash script using `salt`, `salt-cp`, and/or custom modules
  in `_modules`.
  - What about access to salt? Run as root?
  - Reload gunicorn.
    - Need to get pid, either from extension of going or by
      running gunicorns with a pid file.
  - Ping check.
* Using native packages for getting src and http content in place.
  - Need seperate private pacman repo or make current private.
    - Possibly limit access to port 80 by IP.
    - Possibly add net.ipv4.conf.all.rp_filter = 1.
    - Remove sensitive config from package.
      - Use env variables set in place with salt or settings file templated
        by salt.
  - Compile assets.
  - Copy static assets dir to $PREFIX/srv/http/name.
    - Move favicon.ico in place.
    - Use http user and group.
  - Copy source excluding static dir to /usr/local/src/name.
    - Use gunicorn user and group.
  - Cleanup compiled assets.

* New server.
  - Basic, no zsh etc.
* Setup backup of redis data and shots.
* Test CDN.
* Transfer shots and data.
* Either set original server as read-only or replay commands afterwards.
* Change DNS.
* Take down nginx, gunicorn, monit.
* Remove backup settings for MQ data.


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
