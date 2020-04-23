#!/bin/sh
#This script is run on startup

compton & #start compositor
dunst & #starts notification daemon
xwallpaper --zoom ~/.config/wal.png & # set wallpaper
