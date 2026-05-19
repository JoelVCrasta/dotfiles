#!/bin/bash

song_info=$(playerctl metadata --format '{{artist}} - {{title}}' 2>/dev/null)

echo "$song_info"

