#!/bin/sh

# A dwm_bar function to read the battery level and status

dwm_battery () {
    # Change BAT1 to whatever your battery is identified as. Typically BAT0 or BAT1
    # If I plug in my wireless mouse the battery identifier changes from BAT0 to BAT1
    CHARGE=$(cat /sys/class/power_supply/BAT1/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT1/status)

    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        if [ "$STATUS" = "Charging" ]; then
            printf " %s%%%s" "$CHARGE"
        else
            printf " %s%%%s" "$CHARGE"
        fi
    else
        printf " %s%% %s" "$CHARGE"
    fi
    printf "%s\n" "$SEP2"
}

dwm_battery

