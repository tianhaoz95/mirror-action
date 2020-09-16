#!/bin/sh

set -o pipefail

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
PROJ_ROOT="$(dirname "$SCRIPT_DIR")"

cp "$PROJ_ROOT/README.md" "$PROJ_ROOT/docs/README.md"
