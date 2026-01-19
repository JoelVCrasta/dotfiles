#!/bin/bash

WARM=4500
NORMAL=6500

if pgrep -x "hyprsunset" > /dev/null; then
    pkill hyprsunset
    hyprsunset --temperature $NORMAL &
else
    hyprsunset --temperature $WARM &
fi