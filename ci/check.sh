#!/usr/bin/env bash
# Repository checks run by the `check` CI job.
set -euo pipefail

cd "$(dirname "$0")/.."

if [ ! -f README.md ]; then
    echo "AC3-MARKER-1008: README.md is missing" >&2
    exit 1
fi

if ! grep -qF 'ci/check.sh' README.md; then
    echo "AC3-MARKER-1008: README.md must mention ci/check.sh" >&2
    exit 1
fi

echo "ok: README.md mentions ci/check.sh"
