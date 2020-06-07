#!/bin/sh
#runs programs essential to my desktop on X startup

compton & # start compositor
dunst & # runs the dunst notification daemon
~/scripts/dwmstatus & # updates status bar
xwallpaper --zoom ~/.config/wal.png & # set wallpaper
