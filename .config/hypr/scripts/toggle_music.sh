#!/bin/bash
PIDFILE="/tmp/waybar_music_toggle.pid"

if [ -f "$PIDFILE" ]; then
    kill $(cat "$PIDFILE") 2>/dev/null
    rm "$PIDFILE"
    pkill -RTMIN+10 waybar # Send signal to hide Cava
else
    mpv --no-video --really-quiet --loop=inf --shuffle ~/Music/HollowKnight --playlist=<(find ~/Music/HollowKnight -type f | sort) &
    echo $! > "$PIDFILE"
    pkill -RTMIN+10 waybar # Send signal to show Cava
fi