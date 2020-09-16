#!/bin/bash -l

set -o pipefail

ORIGINAL_FILE="$GITHUB_WORKSPACE/$1"
MIRROR_FILE="$GITHUB_WORKSPACE/$2"

if cmp -s "$ORIGINAL_FILE" "$MIRROR_FILE"
then
  echo "Content in $ORIGINAL_FILE and $MIRROR_FILE are the same. Done."
else
  echo "ERROR: content in $ORIGINAL_FILE and $MIRROR_FILE are different."
  exit 1
fi
