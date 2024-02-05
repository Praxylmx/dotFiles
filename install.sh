#!/bin/sh
# Prajwal Gaonkar 2020

clear

cp bashrc ~/.bashrc
echo "Installed bashrc"

cp profile ~/.profile
cp xsessionrc ~/.xsessionrc
echo "Installed profiles"

cp -rf config/ ~/.config
echo "Installed Configuration"

cp -rf local/ ~/.local
echo "Installed User Scripts"

echo "Done"
