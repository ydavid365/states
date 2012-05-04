python2:
  pkg.installed

/usr/bin/python:
  file.symlink:
    - target: /usr/bin/python2
    - require:
      - pkg: python2

python2-virtualenv:
  pkg.installed:
    - require:
      - pkg: python2

/usr/bin/virtualenv:
  file.symlink:
    - target: /usr/bin/virtualenv2
    - require:
      - pkg: python2-virtualenv
