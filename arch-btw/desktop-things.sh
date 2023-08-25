#!/bin/bash
# Extra Things for Main Desktop!

# Installing Multimedia Things
sudo pacman -S --needed audacious spotify-launcher yt-dlp --noconfirm
yay -S --needed plex-media-player --noconfirm

# Installing Editing Apps
sudo pacman -S --needed pinta krita kdenlive ardour obs-studio flowblade --noconfirm

# Installing Misc apps
sudo pacman -S --needed bitwarden --noconfirm
yay -S --needed drawio-desktop-bin --noconfirm

# Installing Font-Repo
mkdir ~/.local/share/fonts
cp -rvT ~/all-the-things/fonts ~/.local/share/fonts/

echo # Bluetooth Things
sudo pacman -S --needed bluez bluez-utils --noconfirm
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service

echo :::::::
echo Job Done!
echo :::::::
