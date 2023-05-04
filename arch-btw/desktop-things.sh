#!/bin/bash
echo Apps for Main Desktop!!

# Installing Multimedia Things
sudo pacman -S --needed audacious spotify-launcher yt-dlp --noconfirm
yay -S --needed plex-media-player --noconfirm

# Installing Editing Apps
sudo pacman -S --needed krita kdenlive ardour obs-studio --noconfirm

# Bluetooth Things
sudo pacman -S --needed bluez bluez-utils --noconfirm
sudo systemctrl start bluetooth.service
sudo systemctrl enable bluetooth.service

echo Job Done!!
echo "Use blutoothctl to manage bluetooth devices"
