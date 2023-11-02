#!/bin/bash
# Installs GNOME Specific Things

# Gnome Google Stuff
sudo pacman -S --needed seahorse gnome-online-accounts gvfs-goa gvfs-google --noconfirm

# Gnome Theme Things
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

# Nautilus Thumbnail Generation
sudo pacman -S --needed ffmpegthumbnailer gst-libav --noconfirm

# Gnome Extensions
sudo pacman -S --needed gnome-shell-extensions --noconfirm
sudo pacman -S --needed libgtop lm_sensors gnome-icon-theme-symbolic gnome-icon-theme-git --noconfirm
sudo pacman -S --needed gnome-tweaks --noconfirm
yay -S --needed gnome-browser-connector --noconfirm
yay -S --needed extension-manager --noconfirm
yay -S --needed adw-gtk3 --noconfirm

# ArcMenu Install
git clone https://gitlab.com/arcmenu/ArcMenu.git ~/.builds/ArcMenu
cd ~/.builds/ArcMenu
make install
cd

echo :::::::
echo Job Done!
echo :::::::
