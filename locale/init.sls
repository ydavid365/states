/etc/locale.gen:
  file:
    - managed
    - source: salt://locale/locale.gen.jinja
    - template: jinja
    - defaults: {
      locale: '' }
