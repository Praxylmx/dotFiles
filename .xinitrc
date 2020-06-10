#!/bin/sh
#Prajwal Gaonkar

# run compositor (for transparency and effects)
compton &
# start notification daemon
dunst &
# set wallpaper
xwallpaper --zoom ~/.config/wal.png &
# run a status script for dwm
dwmstatus &

# Start window manager
exec dwm
