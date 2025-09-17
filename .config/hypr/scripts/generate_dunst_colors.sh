#!/bin/bash

# Source Pywal colors
source "${HOME}/.cache/wal/colors.sh"

# Export colors for dunst config
sed -i "s|\${background}|$background|g" ~/.config/dunst/dunstrc
sed -i "s|\${foreground}|$foreground|g" ~/.config/dunst/dunstrc
sed -i "s|\${color1}|$color1|g" ~/.config/dunst/dunstrc
sed -i "s|\${color4}|$color4|g" ~/.config/dunst/dunstrc
sed -i "s|\${color7}|$color7|g" ~/.config/dunst/dunstrc
sed -i "s|\${separator}|$color8|g" ~/.config/dunst/dunstrc

# Kill and restart dunst to apply new colors
killall dunst
dunst &
