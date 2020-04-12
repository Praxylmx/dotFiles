#!/bin/sh
#This script is for setting wallpaper and simultaneously obtaining
# a pywal colorscheme for the wallpaper and applying it.

#copy image to ~/.config/ directory
cp "$1" ~/.config/wal.png
#set wal.png from ~/.config/ dir as wallpaper and send a notification
xwallpaper --zoom ~/.config/wal.png
wal -i "$1" && notify-send "$1 set as Wallpaper" "pywal colorscheme generated" -t 3000 

