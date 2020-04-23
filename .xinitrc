#!/bin/sh
#Prajwal Gaonkar's .xinitrc
#starts programs on X startup and starts window manager

~/scripts/startup.sh & #run startup script
exec bspwm #start window manager (bspwm)
