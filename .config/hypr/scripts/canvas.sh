#!/bin/bash

art_url=$(playerctl metadata mpris:artUrl 2>/dev/null)

if [[ "$art_url" == file://* ]]; then
    local_path="${art_url#file://}"
    echo "$local_path"
else
    echo "$art_url"
fi

