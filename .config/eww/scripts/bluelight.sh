#!/bin/bash

NORMAL_TEMP=6500
WARM_TEMP=4500
STATEFILE="/tmp/hyprsunset-temp"
PIDFILE="/tmp/hyprsunset.pid"

# Kill previous instance if running
if [ -f "$PIDFILE" ]; then
    kill "$(cat "$PIDFILE")" 2>/dev/null
    rm "$PIDFILE"
fi

# Read current state
if [ -f "$STATEFILE" ]; then
    STATE=$(cat "$STATEFILE")
else
    STATE="normal"
fi

# Toggle temperature
if [ "$STATE" = "normal" ]; then
    hyprsunset --temperature "$WARM_TEMP" & echo $! > "$PIDFILE"
    echo "warm" > "$STATEFILE"
else
    hyprsunset --temperature "$NORMAL_TEMP" & echo $! > "$PIDFILE"
    echo "normal" > "$STATEFILE"
fi
