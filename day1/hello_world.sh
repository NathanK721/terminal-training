#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Usage check (fail fast)
if [[ $# -gt 1 ]]; then
  echo "Usage: $0 [name]" >&2
  exit 1
fi

# Default name and timestamp
name="${1:-world}"
now=$(date '+%Y-%m-%d %H:%M:%S')

mkdir -p logs
echo "[$now] Hello, ${name}!" | tee -a logs/day1.log

# Greeting
echo "Hello, $name! The time is $now."

# Usage check


exit 0