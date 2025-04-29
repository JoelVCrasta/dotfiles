#!/bin/bash

bat="/sys/class/power_supply/BAT1"
per=$(cat "$bat/capacity")
status=$(cat "$bat/status")

icon() {
  if [ "$status" = "Charging" ]; then
    if [ "$per" -gt 90 ]; then
      printf "󰂅"
    elif [ "$per" -gt 80 ]; then
      printf "󰂋"
    elif [ "$per" -gt 70 ]; then
      printf "󰂊"
    elif [ "$per" -gt 60 ]; then
      printf "󰢞"
    elif [ "$per" -gt 50 ]; then
      printf "󰂉"
    elif [ "$per" -gt 40 ]; then
      printf "󰢝"  
    elif [ "$per" -gt 30 ]; then
      printf "󰂈"
    elif [ "$per" -gt 20 ]; then 
      printf "󰂇"
    elif [ "$per" -gt 10 ]; then
      printf "󰂆"
    else
      printf "󰢜"
    fi
    return
  fi

  if [ "$per" -gt 90 ]; then
    printf "󰁹"
  elif [ "$per" -gt 80 ]; then
    printf "󰂂"
  elif [ "$per" -gt 70 ]; then
    printf "󰂁"
  elif [ "$per" -gt 60 ]; then
    printf "󰂀"
  elif [ "$per" -gt 50 ]; then
    printf "󰁿"
  elif [ "$per" -gt 40 ]; then
    printf "󰁾"
  elif [ "$per" -gt 30 ]; then
    printf "󰁽"
  elif [ "$per" -gt 20 ]; then
    printf "󰁼"
  elif [ "$pr" -gt 10 ]; then
    printf "󰁻"
  else
    printf "󰁺"
  fi
}

percent() {
  printf $per
}

case "$1" in
  icon)
    icon
    ;;
  percent)
    percent
    ;;
esac
