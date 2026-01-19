#!/bin/bash

if [ -z "$1" ]; then
  exit 1
fi

toggle_warp() {
    if warp-cli status | grep -q "Connected"; then
        warp-cli disconnect
    else
        warp-cli connect
    fi
}

show_status() {
    if warp-cli status | grep -q "Connected"; then
        printf "true"
    else
        printf "false"
    fi
}

case $1 in
    toggle)
        toggle_warp
        ;;
    status)
        show_status
        ;;
esac