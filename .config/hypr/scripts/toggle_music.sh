#!/bin/bash
PIDFILE="/tmp/waybar_music_toggle.pid"

if [ -f "$PIDFILE" ]; then
    kill $(cat "$PIDFILE") 2>/dev/null
    pkill cava
    rm "$PIDFILE"
else
    mpv --no-video ~/Music/HollowKnight --playlist=<(find ~/Music/HollowKnight -type f | sort) &
    echo $! > "$PIDFILE"
    cava &
fi
