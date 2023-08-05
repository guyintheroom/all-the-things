#!/bin/bash
echo # Installs GNOME Specific Things

echo # Gnome Google Stuff
sudo pacman -S seahorse gnome-online-accounts gvfs-goa gvfs-google --noconfirm

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

echo # ArcMenu Install
git clone https://gitlab.com/arcmenu/ArcMenu.git ~/.builds/ArcMenu
make ~/.builds/ArcMenu/install --noconfirm

echo # :::::::
echo # Job Done!!
echo # :::::::
