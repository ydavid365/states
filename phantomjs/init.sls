phantomjs:
  pkg.installed

phantomjs-deps:
  pkg:
    - installed
    - names:
      - fontconfig
      - freetype2
