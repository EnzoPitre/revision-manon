#!/usr/bin/env sh
# Assemble index.html : une seule appli, un onglet par collection (src/mur, src/errata).
set -e
cd "$(dirname "$0")/src"
dataset() { # $1 = dossier de la collection
  echo "DS_ORDER.push(\"$1\"); DATASETS[\"$1\"] = (function(){"
  echo "const ITEMS = [];"
  echo "function F(spec, num, title, cards){ ITEMS.push({id:spec+\"-\"+num, spec, num, title, cards}); }"
  cat "$1/01-config.html" $(ls "$1"/1*.html "$1"/2*.html | sort)
  echo "return {CONFIG, ITEMS, GROUPS, TRIS, ORDRES, FLASH};"
  echo "})();"
}
{
  cat mur/00-title.html shared/00-head.html shared/01-style.html shared/02-shell.html
  dataset mur
  dataset errata
  cat shared/10-engine-a.html shared/11-engine-b.html shared/12-engine-c.html
} > ../index.html
echo "OK"
