#/usr/bin/kitten

killall -9 swaync
killall -9 waybar

swaync &
waybar &
