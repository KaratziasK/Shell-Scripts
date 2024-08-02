#!/bin/bash

if [ -z "$1" ]; then
  echo " $0 [path-to-file]"
  exit 1
fi

file="$1"

awk '{count[$1" "$2]++} END {for (word in count) print count[word], word}' "$file"

