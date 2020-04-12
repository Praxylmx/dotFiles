#!/bin/sh
#This script is run on startup

compton & #start compositor
dunst & #starts notification daemon
wal -R & #reloads pywal and apply's colorscheme on startup
xwallpaper --zoom ~/.config/wal.png & # set wallpaper
~/scripts/dwm-bar/dwm_bar.sh & #start statusbar
