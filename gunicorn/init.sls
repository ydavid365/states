gunicorn:
  pkg.installed:
    - require:
      - pkg: python2-setproctitle

python2-setproctitle:
  pkg.installed
