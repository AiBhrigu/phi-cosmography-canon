#!/usr/bin/env bash
set -euo pipefail
BASE="${1:-$HOME}"

echo "== LOCATE COSMOGRAPHY REPOS (auto) =="
mapfile -t CANDS < <(
  find "$BASE" -maxdepth 4 -type d \( -iname "*cosmography*" -o -iname "*phi-cosmography*" \) 2>/dev/null
)

printf "%s\n" "${CANDS[@]}" | awk '!seen[$0]++' | head -n 60 | while read -r d; do
  [ -z "$d" ] && continue
  echo
  echo "===== CANDIDATE: $d ====="
  [ -d "$d/.git" ] && echo "GIT: yes" || echo "GIT: no"
  [ -d "$d/.git" ] && (cd "$d" && git remote -v 2>/dev/null || true) | sed 's/^/origin  /' || true
  [ -f "$d/package.json" ] && echo "NODE: package.json yes" || echo "NODE: package.json no"
  [ -d "$d/site" ] && echo "SITE/: yes" || echo "SITE/: no"
  [ -d "$d/src" ] && echo "SRC/: yes" || echo "SRC/: no"

  echo "-- style files (top 40) --"
  find "$d" -maxdepth 4 -type f \( -iname "*.css" -o -iname "*.scss" \) 2>/dev/null | head -n 40 || true

  if command -v rg >/dev/null 2>&1; then
    echo "-- typography signals (first hits) --"
    rg -n -S "font-|font:|letter-spacing|line-height|text-rendering" "$d" 2>/dev/null | head -n 20 || true
  else
    echo "-- typography signals (first hits) --"
    echo "rg missing"
  fi
done
