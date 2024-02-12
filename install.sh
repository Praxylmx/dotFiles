#!/bin/sh
# Prajwal Gaonkar 2024

clear

cp bashrc $HOME/.bashrc
echo "Installed bashrc"

cp profile $HOME/.profile
cp xsessionrc $HOME/.xsessionrc
echo "Installed profiles"

cp -rf config/* $HOME/.config/*
echo "Installed Configuration"

cp -rf local/* $HOME/.local/*
echo "Installed User Scripts"

echo "Done"

# AwesomeWM config
cp background $HOME/.config/awesome/background
echo "Installed Wallpaper"
