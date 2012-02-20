/etc/profile:
  file:
    - managed
    - source: salt://bash/profile

/etc/inputrc:
  file:
    - managed
    - source: salt://bash/inputrc

bash-completion:
  pkg:
    - installed
