#!/bin/sh
# syncs my dotFiles with the GitHub repository.

# copy my updated dotFiles from my system to this repository.
cp -rf ~/scripts/ ~/.bashrc ~/.profile ~/.xinitrc .
# add updated file, commit changes, and push changes.
git add \*
git commit
git push
