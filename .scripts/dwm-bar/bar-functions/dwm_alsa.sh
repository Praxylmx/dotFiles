#!/bin/sh

# A dwm_bar function to show the master volume of ALSA

# Dependencies: alsa-utils

dwm_alsa () {
    VOL=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")
    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        if [ "$VOL" -eq 0 ]; then
            printf " MUTE"
        else
            printf " %s%%" "$VOL"
        fi
    else
        if [ "$VOL" -eq 0 ]; then
            printf "MUTE"
        else
            printf "VOL %s%%" "$VOL"
        fi
    fi
    printf "%s\n" "$SEP2"
}

dwm_alsa
