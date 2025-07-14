#!/bin/bash

# Check if connected
wifi_interface=$(nmcli device status | awk '$2 == "wifi" && $3 == "connected" { print $1 }')
eth_interface=$(nmcli device status | awk '$2 == "ethernet" && $3 == "connected" { print $1 }')

if [[ -n "$wifi_interface" ]]; then
    echo "󱚻 connected"
elif [[ -n "$eth_interface" ]]; then
    echo "󰈀 connected"
else
    echo "󰲛 disconnected"
fi

