#!/usr/bin/env bash
set -euo pipefail

echo "== CANON STATUS =="
echo "repo: $(pwd)"
echo

echo "-- git --"
git rev-parse --abbrev-ref HEAD
git --no-pager log --oneline -n 5
echo

echo "-- dirty? --"
git status --porcelain || true
echo

echo "-- key specs --"
for f in \
  canon/specs/S_LINE_RISK_REGISTER.md \
  canon/specs/COSMOGRAPHY_SOURCE_OF_TRUTH.md \
  canon/specs/STATE_DECLARATION.md
do
  if [ -f "$f" ]; then
    echo "OK: $f ($(wc -l < "$f") lines)"
  else
    echo "MISSING: $f"
  fi
done

echo
echo "-- locator (top) --"
if [ -x canon/tools/locate_cosmography_repos.sh ]; then
  canon/tools/locate_cosmography_repos.sh "$HOME" | head -n 40
else
  echo "MISSING: canon/tools/locate_cosmography_repos.sh"
fi
