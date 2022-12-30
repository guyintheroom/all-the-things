#!/bin/bash
echo Music Things!!
echo Snap needs to be installed beforehand!
echo Press any key to continue!
read

echo Installing  Spotify
sudo snap install spotify

# Audacious
sudo pacman -S audacious --noconfirm

echo Job Done!!
read
