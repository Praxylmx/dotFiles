#!/bin/sh

# A dwm_bar function to show the current network connection/SSID, private IP, and public IP using NetworkManager
# Prajwal Gaonkar
# Dependencies: NetworkManager, curl

dwm_networkmanager () {
    NETWORK=$(nmcli -a | grep 'Wired connection' | awk 'NR==1{print$1}')
    if [ "$NETWORK" = "" ]; then
        NETWORK=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -c 5-)
    fi

    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        printf " $NETWORK"
    else
        printf "NET " "$NETWORK"
    fi
    printf "%s\n" "$SEP2"
}

dwm_networkmanager
