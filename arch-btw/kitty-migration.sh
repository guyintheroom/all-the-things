#!/bin/bash

# Pre-Reqs and Kitty Emulator
sudo pacman -S --needed kitty --noconfirm
# Add Kitty Configs
mkdir ~/.config/kitty
cp -rT ~/all-the-things/config-files/dot-files/kitty/kitty.conf ~/.config/kitty/kitty.conf
cp -rT ~/all-the-things/config-files/dot-files/kitty/current-theme.conf ~/.config/kitty/current-theme.conf
cp -rT ~/all-the-things/images/icons/kitty-tiny.png ~/.config/kitty/kitty-tiny.png
sed -e 's|Icon=.*|Icon=/home/guyintheroom/all-the-things/images/icons/kitty.app.png|' /usr/share/applications/kitty.desktop > ~/.local/share/applications/kitty.desktop

echo :::::::
echo Job Done!
echo :::::::
