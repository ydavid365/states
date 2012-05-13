python2:
  pkg:
    - installed
  file.symlink:
    - name: /usr/bin/python
    - target: /usr/bin/python2
    - require:
      - pkg: python2

python2-virtualenv:
  pkg.installed:
    - require:
      - pkg: python2
  file.symlink:
    - name: /usr/bin/virtualenv
    - target: /usr/bin/virtualenv2
    - require:
      - pkg: python2-virtualenv
