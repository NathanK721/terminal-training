#!/usr/bin/env bash

# Default name and timestamp
name="${1:-world}"
now=$(date '+%Y-%m-%d %H:%M:%S')

# Greeting
echo "Hello, $name! The time is $now."

# Usage check
if [[ $# -gt 1 ]]; then
  echo "Usage: $0 [name]" >&2
  exit 1
fi

exit 0