#!/usr/bin/env bash

items=(file1.txt file2.txt file3.txt) # Replace with your list, e.g., (1 2 3) or ("a" "b" "c")

if [ ${#items[@]} -eq 0 ]; then
    echo "The list is empty."
else
    for i in "${!items[@]}"; do
        idx=$((i + 1))
        echo "$idx: ${items[$i]}"
    done
fi