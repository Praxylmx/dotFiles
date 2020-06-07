#!/bin/sh

# startup script
~/scripts/startup.sh &

# Start window manager
exec dwm
