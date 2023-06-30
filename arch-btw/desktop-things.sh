#!/bin/bash
echo # Extra Apps for Main Desktop!!

echo # Installing Multimedia Things
sudo pacman -S --needed audacious spotify-launcher yt-dlp --noconfirm
yay -S --needed plex-media-player --noconfirm

echo # Installing Editing Apps
sudo pacman -S --needed krita kdenlive ardour obs-studio --noconfirm

echo # Installing Misc apps
yay -S --needed drawio-desktop-bin --noconfirm

echo # Bluetooth Things
sudo pacman -S --needed bluez bluez-utils --noconfirm
sudo systemctrl start bluetooth.service
sudo systemctrl enable bluetooth.service

echo # :::::::
echo # Job Done!!
echo # Use blutoothctl to manage bluetooth devices
echo # :::::::
