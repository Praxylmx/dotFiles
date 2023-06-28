#!/bin/sh
#Prajwal Gaonkar

# run compositor (for transparency and effects)
xcompmgr &
# start notification daemon
#dunst &
# set wallpaper
xwallpaper --zoom ~/.config/wal.png &
# load colors from .Xresources
xrdb ~/.Xresources

# Start window manager
exec bspwm
