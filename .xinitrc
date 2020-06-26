#!/bin/sh
#Prajwal Gaonkar

# run compositor (for transparency and effects)
compton &
# start notification daemon
dunst &
# set wallpaper
xwallpaper --zoom ~/.config/wal.png &

# Start window manager
exec bspwm
