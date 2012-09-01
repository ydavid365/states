base-devel:
  pkg.installed:
    - names:
      - autoconf
      - automake
      - binutils
      - bison
      - fakeroot
      - flex
      - gcc
      - libtool
      - m4
      - make
      - patch
      - pkg-config
      - abs

/etc/makepkg.conf:
  file.managed:
    - source: salt://packaging/makepkg.conf.jinja
    - template: jinja
    - defaults:
        packager: "Eivind Uggedal <eivind@uggedal.com>"
