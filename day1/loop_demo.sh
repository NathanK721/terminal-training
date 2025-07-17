#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

if [[ $# -eq 0 ]]; then
  echo "Usage: $0 item1 [item2 ...]" >&2
  exit 1
fi

for index in "${!@}"; do
  printf '%d: %s\n' "$((index+1))" "${!index}"
done