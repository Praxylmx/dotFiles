#!/bin/sh
#Prajwal Gaonkar

# run compositor (for transparency and effects)
xcompmgr &
# start notification daemon
dunst &
# set wallpaper
xwallpaper --zoom ~/.config/wal.png &

# Start window manager
exec bspwm
