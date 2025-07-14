#!/bin/bash

# Get battery capacity and status
capacity=$(cat /sys/class/power_supply/BAT*/capacity 2>/dev/null)
status=$(cat /sys/class/power_supply/BAT*/status 2>/dev/null)

# Emoji based on status
emoji=""
case $status in
    "Charging") emoji="󰂄" ;;
    "Discharging") emoji="󱟞" ;;
    "Full") emoji="󰁹" ;;
    *) emoji="󱟩" ;;
esac

echo "$emoji $capacity%"

