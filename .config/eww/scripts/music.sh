#!/bin/bash

if [ -z "$1" ]; then
  exit 1
fi

case "$1" in
  play-pause)
    playerctl play-pause
    ;;
  next)
    playerctl next
    ;;
  previous)
    playerctl previous
    ;;
esac