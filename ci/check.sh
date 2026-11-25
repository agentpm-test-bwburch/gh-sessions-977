#!/usr/bin/env bash
set -euo pipefail
for i in $(seq 1 3000); do echo "filler line $i"; done
echo "AC3-MARKER-1008: README.md must mention ci/check.sh"
exit 1
