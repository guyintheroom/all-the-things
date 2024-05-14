#!/bin/bash
# Extra Things for Main Desktop!

# Installing Multimedia Things
sudo pacman -S --needed pavucontrol audacious spotify-launcher yt-dlp vlc --noconfirm
yay -S --needed cli-visualizer plex-media-player --noconfirm
cp -rT ~/all-the-things/yt-dl/ ~/Downloads/yt-dl/

# Vis Configs
mkdir -p ~/.config/vis/colors
cp -rT ~/all-the-things/config-files/dot-files/vis/config ~/.config/vis/config
cp -rT ~/all-the-things/config-files/dot-files/vis/colors/. ~/.config/vis/colors/

# Installing Editing Apps
sudo pacman -S --needed pinta krita kdenlive ardour obs-studio flowblade --noconfirm

# Installing Misc apps
sudo pacman -S --needed bitwarden --noconfirm
yay -S --needed drawio-desktop-bin usbimager zoom --noconfirm

# Installing Font-Repo
mkdir ~/.local/share/fonts
cp -rvT ~/all-the-things/fonts ~/.local/share/fonts/

echo # Bluetooth Things
sudo pacman -S --needed bluez blueman bluez-utils --noconfirm
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service

# Complete!
cat << "EOF" 
   ___       _      ______                 _ 
  |_  |     | |     |  _  \               | |
    | | ___ | |__   | | | |___  _ __   ___| |
    | |/ _ \| '_ \  | | | / _ \| '_ \ / _ \ |
/\__/ / (_) | |_) | | |/ / (_) | | | |  __/_|
\____/ \___/|_.__/  |___/ \___/|_| |_|\___(_)
EOF
