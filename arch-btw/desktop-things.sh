#!/bin/bash
echo # Extra Apps for Main Desktop!!

echo # Installing Multimedia Things
sudo pacman -S --needed audacious spotify-launcher yt-dlp --noconfirm
yay -S --needed plex-media-player --noconfirm

echo # Installing Editing Apps
sudo pacman -S --needed krita kdenlive ardour obs-studio --noconfirm

echo # Installing Misc apps
sudo pacman -S --needed bitwarden --noconfirm
yay -S --needed drawio-desktop-bin --noconfirm

echo # Bluetooth Things
sudo pacman -S --needed bluez bluez-utils --noconfirm
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service

echo :::::::
echo Job Done!!
echo :::::::
