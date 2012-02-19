include:
  - locale

extend:
  /etc/locale.gen:
    file:
      - context: {
        locale: 'en_US.UTF-8 UTF-8' }
