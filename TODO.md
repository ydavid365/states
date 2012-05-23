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
  - Possibly add net.ipv4.conf.all.rp_filter = 1.
* Nginx:
  - Rewrite missing html extension.
  - SSL support.
* Git:
  - Password protected cgit instance served through fcgiwrap.
* Uwsgi:
  - Add idle option for less used sites.
  - Possibly use going for supervision of emperor process if it's unstable.
  - Django support.


Deploy (MQ)
-----------

* Makefile or bash script using `salt`, `salt-cp`, and/or custom modules
  in `_modules`.
  - What about access to salt? Run as root?
  - Update native package.
  - Reload uwsgi by touching vassal's ini file.
  - Ping check.
* Using native packages for getting src and http content in place.
  - Remove sensitive config from package.
    - Use env variables set in place with salt possibly added to the
      uwsgi vassal ini files with the env key.
  - Compile assets.
  - Copy static assets dir to $PREFIX/srv/http/name.
    - Move favicon.ico in place.
    - Use http user and group.
  - Copy source excluding static dir to /usr/local/src/name.
    - Use gunicorn user and group.
  - Cleanup compiled assets.

* Setup backup of redis data and shots.
* Test CDN.
* Transfer shots and data.
* Either set original server as read-only or replay commands afterwards.
* Change DNS.
* Change DNS to mq.es on MaxCDN.
* Take down nginx, gunicorn, monit for MQ.
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
