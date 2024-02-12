#!/bin/sh
# Prajwal Gaonkar 2020

clear

cp $HOME/.bashrc bashrc

cp $HOME/.profile profile
cp  $HOME/.xsessionrc xsessionrc

cp -rf $HOME/.config/* config/ 

cp -rf $HOME/.local/* local/

echo "Done"

# AwesomeWM config
cp $HOME/.config/awesome/background background
