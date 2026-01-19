#!/bin/bash

if [ -z "$1" ]; then
	exit 1
fi

get_metadata() {
	playerctl metadata --format "{{ $1 }}" 2>/dev/null
}

get_source_info() {
	trackid=$(get_metadata "mpris:trackid")
	if [[ "$trackid" == *"firefox"* ]]; then
		echo -e " Firefox"
	elif [[ "$trackid" == *"spotify"* ]]; then
		echo -e " Spotify"
	elif [[ "$trackid" == *"brave"* ]]; then
		echo -e " Brave" 
	else
		echo ""
	fi
}

case $1 in
    status)
        status=$(playerctl status 2>/dev/null)
        if [[ "$status" == "Playing" ]]; then
            printf "󰎆"
        elif [[ "$status" == "Paused" ]]; then
            printf "󱑽"
        else
            printf ""
        fi
        ;;

    title)
        title=$(get_metadata "xesam:title")
        [ -z "$title" ] && printf "" || printf "${title:0:28}"
        ;;

    artist)
        artist=$(get_metadata "xesam:artist")
        [ -z "$artist" ] && printf "" || printf "${artist:0:30}"
        ;;

    source)
        trackid=$(get_metadata "mpris:trackid")
        if [[ "$trackid" == *"firefox"* ]]; then
            printf " Firefox"
        elif [[ "$trackid" == *"spotify"* ]]; then
            printf " Spotify"
        elif [[ "$trackid" == *"brave"* ]]; then
            printf " Brave"
        else
            printf ""
        fi
        ;;

    arturl)
        url=$(get_metadata "mpris:artUrl")
        if [[ "$url" == file://* ]]; then
            printf "${url#file://}"
        else
            printf "$url"
        fi
        ;;

    length)
        length=$(get_metadata "mpris:length")
        if [ -n "$length" ]; then
            # Use bc to convert microseconds to minutes
            printf "$(echo "scale=2; $length / 60000000" | bc)m"
        else
            printf ""
        fi
        ;;

    album)
        album=$(get_metadata "xesam:album")
        if [[ -n "$album" ]]; then
            printf "$album"
        else
            # Only show "No Album" if a player is actually active
            playerctl status &>/dev/null && printf "No Album" || printf ""
        fi
        ;;

    *)
        echo "Invalid option: $1"
        exit 1
        ;;
esac