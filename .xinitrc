#!/bin/sh
#Prajwal Gaonkar's .xinitrc
#starts programs on startup and starts window manager

~/scripts/startup.sh & #run startup script
exec dwm #start window manager (dwm)
