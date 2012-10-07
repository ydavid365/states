/etc/pacman.conf:
  file.managed:
    - source: salt://pacman/pacman.conf.jinja
    - order: 1
    - mode: 644
    - template: jinja
    - context:
        extra_repos: {{ pillar.pacman_extra_repos or [] }}

pacman-contrib:
  pkg.installed
