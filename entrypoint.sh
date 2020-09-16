#!/bin/bash -l

set -o pipefail

ORIGINAL_FILE="$GITHUB_WORKSPACE/$1"
MIRROR_FILE="$GITHUB_WORKSPACE/$2"

echo "Check the content of $ORIGINAL_FILE and $MIRROR_FILE."

if [ -f "$ORIGINAL_FILE" ]
then
  echo "INFO: $ORIGINAL_FILE exists."
else 
  echo "ERROR: $ORIGINAL_FILE does not exist. Abort."
  exit 1
fi

if [ -f "$MIRROR_FILE" ]
then
  echo "INFO: $MIRROR_FILE exists."
else 
  echo "ERROR: $MIRROR_FILE does not exist. Abort."
  exit 1
fi

if cmp -s "$ORIGINAL_FILE" "$MIRROR_FILE"
then
  echo "INFO: content in $ORIGINAL_FILE and $MIRROR_FILE are the same. Done."
else
  echo "ERROR: content in $ORIGINAL_FILE and $MIRROR_FILE are different."
  exit 1
fi
