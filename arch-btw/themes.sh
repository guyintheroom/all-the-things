#!/bin/bash
echo # Installing Themes

echo # Copying Images to location
sudo cp -rT ~/all-the-things/images/wallpapers /usr/share/backgrounds/my-wallpapers
cp -rT ~/all-the-things/images/wallpapers ~/.local/share/backgrounds
sudo cp -rT ~/all-the-things/images/icons /usr/share/backgrounds/icons

echo # Installing Fonts
yay -S pop-fonts --noconfirm
yay -S ttf-roboto-slabs --noconfirm
yay -S ttf-ubuntu-font-family --noconfirm

echo # Installing Icon Themes
yay -S yaru-icon-theme --noconfirm
yay -S bibata-cursor-theme --noconfirm
yay -S elementary-icon-theme --noconfirm

echo # :::::::
echo # Job Done!!
echo # :::::::
