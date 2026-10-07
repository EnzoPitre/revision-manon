#!/usr/bin/env sh
# Assemble les deux applis à partir de src/ : index.html (Le Mur) et errata.html (Errata rang A).
set -e
cd "$(dirname "$0")/src"
build() { # $1 = dossier de l'appli, $2 = fichier de sortie
  cat "$1/00-title.html" shared/00-head.html shared/01-style.html shared/02-shell.html \
      "$1/01-config.html" $(ls "$1"/1*.html "$1"/2*.html | sort) \
      shared/10-engine-a.html shared/11-engine-b.html shared/12-engine-c.html > "../$2"
}
build mur index.html
[ -d errata ] && [ -f errata/01-config.html ] && build errata errata.html
echo "OK"
