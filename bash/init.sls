/etc/profile:
  file.managed:
    - source: salt://bash/profile

/etc/inputrc:
  file.managed:
    - source: salt://bash/inputrc

/etc/bash.bashrc:
  file.managed:
    - source: salt://bash/bash.bashrc

bash-completion:
  pkg.installed
