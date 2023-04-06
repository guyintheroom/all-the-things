#!/bin/bash
echo Apps for Main Desktop!!
echo Snap is required prior to running this script!!
read

echo :::::::
echo Installing Multimedia Things
sudo pacman -S --needed audacious spotify-launcher plex-media-player --noconfirm

echo :::::::
echo Installing Editing Apps
sudo pacman -S --needed krita kdenlive ardour obs-studio --noconfirm


echo Job Done!!
read
