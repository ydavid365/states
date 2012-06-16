mplayer:
  pkg:
    - installed
  file.managed:
    - name: /etc/mplayer/mplayer.conf
    - source: salt://mplayer/mplayer.conf
    - require:
      - pkg: mplayer
      - pkg: ttf-dejavu

