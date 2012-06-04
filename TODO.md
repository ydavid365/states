Server
------

* Pacman repo served by nginx:
  - [Package signing](http://jasonwryan.com/blog/2012/03/23/key/)
    for pkg.uggedal.com.
  - Wrapper script for adding/updating/purging old packages.
* Turn on signature checking for all packages if possible.
* Iptables:
  - Possibly add net.ipv4.conf.all.rp_filter = 1.
* Nginx:
  - Rewrite missing html extension.
  - SSL support.
* Git:
  - Password protected cgit instance served through fcgiwrap.
* Uwsgi:
  - Possibly use going for supervision of emperor process if it's unstable.
* [Statsite][statsite]:
  - Create PKGBUILD and handle it with salt.
* Collectd.
  - Need a proxy to graphite.
* Graphite.
  - Create PKGBUILD and handle it with salt.
* Alerting/monitoring.
  - Something lightweight (maybe write something in C).


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

[statsite]: https://github.com/armon/statsite
