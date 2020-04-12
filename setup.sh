#!/bin/sh
#Prajwal Gaonkar
#This script is intened to automatically set up my pc the way I like it.

#clone needed github repos
#git clone https://github.com/PrajwalX7/configFiles/ #This is current repo

#get basic progams which are absolutely essental for my setup script
sudo apt install --no-install-recommends build-essential xwallpaper compton dunst python3-pip libxft-dev libxinerama-dev firmware-linux-nonfree
#install pywal through pip
pip3 install --user pywal

cp -rf .config ~
cp -rf .bashrc ~
cp -rf scripts ~

#Now build DWM
cd dwm
rm -rf config.h #removing this as it causes problem during compile
sudo make clean install

## Ask user if want to download basic programs like image viewer, etc.

read -p "Do you want to download extras (sxiv, mpv, etc.?)" INP
if [ $INP = yes ]
then
	sudo apt install --no-install-recommends sxiv mpv 
fi
