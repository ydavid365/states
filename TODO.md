Server
------

* Pacman repo served by nginx:
  - Wrapper script for adding/updating/purging packages.
* Signed packages:
  - Find a better way to generate gpg key without X.
  - Turn on signature checking for official packages.
  - Add [package signing][pkgsign] for local packages.
  - Turn on signature checking for local packages.
* Iptables:
  - Possibly add net.ipv4.conf.all.rp_filter = 1.
* Nginx:
  - SSL support.
* Git:
  - Password protected cgit instance served through fcgiwrap.
* [Statsite][statsite]:
  - Create PKGBUILD and handle it with salt.
* Collectd:
  - Write to graphite.
  - Configure collection of:
      - CPU.
      - Df.
      - Disk.
      - Interface (network).
      - Load.
      - Memory.
      - Nginx.
      - Postgresql.
      - Redis.
      - Processes.
      - Swap.
      - Tail (or use [logster][logster]).
  - Possibly collect:
      - ConnTrack.
      - IPTables.
      - TCPConns.
      - Uptime.
      - Users.
* Graphite:
  - Create PKGBUILD and handle it with salt.
  - Setup dashboard. Chose one of:
      - https://github.com/jondot/graphene
      - https://github.com/obfuscurity/tasseo
      - https://github.com/fetep/pencil
      - https://github.com/ripienaar/gdash
* [Logster][logster]:
  - Look at [example][logsterexample].
* Alerting/monitoring:
  - Something lightweight (maybe write something in C).


Desktop
-------

* Mac (keyboard, pommed).
* Wireless.
* Xorg.
* Nvidia.
* DWM with dmenu, no-ffm patch and solarized colors or
  monsterwm with some-sorta-bar and dmenu and soliarzed colors.
* Mplayer.
* Spotify.
* Urxvt or st.
* Sxiv.
* Mupdf.
* Unclutter.
* Firefox or dwb (what about Lastpass?).
* PT Mono in terminal and dwm.

[pkgsign]: http://jasonwryan.com/blog/2012/03/23/key/
[statsite]: https://github.com/armon/statsite
[logster]: https://github.com/etsy/logster
[logsterexample]: http://www.kickflop.net/blog/2012/03/30/any-metric-graphing-with-graphite-and-syslog/
