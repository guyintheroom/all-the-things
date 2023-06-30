#!/bin/bash
echo # Installs GNOME Specific Things

echo # Gnome Theme Things
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

echo # Gnome Extensions
sudo pacman -S --needed gnome-shell-extensions --noconfirm
sudo pacman -S --needed libgtop lm_sensors gnome-icon-theme-symbolic gnome-icon-theme-git --noconfirm
sudo pacman -S --needed gnome-tweaks --noconfirm
sudo pacman -S --needed pacman-contrib --noconfirm
yay -S --needed gnome-browser-connector --noconfirm
yay -S --needed extension-manager --noconfirm
yay -S --needed adw-gtk3 --noconfirm

echo # :::::::
echo # Job Done!!
echo # :::::::
