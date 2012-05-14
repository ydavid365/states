gunicorn:
  pkg.installed:
    - require:
      - pkg: python2-setproctitle

python2-setproctitle:
  pkg.installed

gunicorn-dirs:
  file.directory:
    - names:
      - /etc/gunicorn.d
      - /var/run/gunicorn
      - /var/log/gunicorn
    - require:
      - pkg: gunicorn
