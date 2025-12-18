#!/usr/bin/env bash
set -euo pipefail
# Usage:
#   canon/tools/run_atom.sh <<'EOF'
#   <commands...>
#   EOF
tmp="$(mktemp)"
cat > "$tmp"
bash "$tmp"
rm -f "$tmp"
