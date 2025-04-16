#!/bin/bash

cava | while read -r line; do
  bars=$(echo "$line" | tr -d '[],' | tr -s ' ')
  echo "{\"text\": \"$bars\", \"class\": \"cava\"}"
done
