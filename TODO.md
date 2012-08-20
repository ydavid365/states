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
* Urxvt
  - Fix xft rendering and find appropriate font (maybe roboto).
* DWB
  - Create lastpass function bound to key based on bookmarklet. Do not
    share this in the public git repo (possibly read key from file).
  - Create pocket function.
  - Mimic vimium hint style by using custom stylesheet and dwb_hint class:
    https://github.com/philc/vimium/blob/master/vimium.css
  - Hook up youtube-dl wrapper:
    https://bitbucket.org/portix/dwb/src/bb0ecac44892/examples/youtube.sh
    (use -t and save to home dir and rewrite to js like
    https://bitbucket.org/portix/dwb/src/bb0ecac44892/examples/js/autoquvi.js).
    or js
  - Hook up adblock and add cron task:
    https://bitbucket.org/portix/dwb/src/bb0ecac44892/examples/grab_adblocker
* Fix colors in vim inside tmux.
* Fork lightum as lighterum:
  - Remove dbus dependency.
  - Remove manual mode.
  - Remove config file.
  - Remove unneeded options.
  - Write directly to proc, make sure it is ran as root and not an
    unprivileged user.
  - Create PKGBUILD with rc script and possibly systemd unit.
  - Look into using inotify against /proc in stead of polling.


Raspberry PI
------------
* External HDD.
* ArchLinux ARM managed by salt.
* Update firmware: https://github.com/Hexxeh/rpi-update
* Host packages on repo server. Symlink any arch packages like salt.
* Make omxplayer git version work as efficiently as bin version.
* rtorrent in tmux or btpd.
* Mopidy or other console spotify client like despotify or libspotify ARM.


[pkgsign]: http://jasonwryan.com/blog/2012/03/23/key/
[statsite]: https://github.com/armon/statsite
[logster]: https://github.com/etsy/logster
[logsterexample]: http://www.kickflop.net/blog/2012/03/30/any-metric-graphing-with-graphite-and-syslog/
