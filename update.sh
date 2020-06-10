#!/bin/sh
# syncs my dotFiles with the GitHub repository.

# copy my updated dotFiles from my system to this repository.
rm -rf .config
mkdir .config
cp -rf ~/.config/mpv ~/.config/ranger ~/.config/nvim ~/.config/user-dirs.dirs ~/.config/wal.png .config/
cp -rf ~/scripts/ ~/.bashrc ~/.profile ~/.xinitrc .
# add updated file, commit changes, and push changes.
git add \*
git commit
git push
