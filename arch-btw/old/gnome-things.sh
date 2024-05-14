#!/bin/bash
# Installs GNOME Specific Things

# Gnome Google Stuff
sudo pacman -S --needed seahorse gnome-online-accounts gvfs-goa gvfs-google --noconfirm

# Gnome Theme Things
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

# Nautilus Thumbnail Generation
sudo pacman -S --needed ffmpegthumbnailer gst-libav --noconfirm

# Kitty Gnome Icon
sed -e "s|Icon=.*|Icon=$HOME/.config/kitty/kitty.app.png|" /usr/share/applications/kitty.desktop > ~/.local/share/applications/kitty.desktop

# Gnome Extensions
sudo pacman -S --needed gnome-shell-extensions libgtop lm_sensors gnome-tweaks --noconfirm
yay -S --needed gnome-browser-connector extension-manager adw-gtk3 gnome-icon-theme-symbolic gnome-icon-theme --noconfirm

# ArcMenu Install
git clone https://gitlab.com/arcmenu/ArcMenu.git ~/.builds/ArcMenu
cd ~/.builds/ArcMenu
make install
cd

# Complete!
cat << "EOF" 
   ___       _      ______                 _ 
  |_  |     | |     |  _  \               | |
    | | ___ | |__   | | | |___  _ __   ___| |
    | |/ _ \| '_ \  | | | / _ \| '_ \ / _ \ |
/\__/ / (_) | |_) | | |/ / (_) | | | |  __/_|
\____/ \___/|_.__/  |___/ \___/|_| |_|\___(_)
EOF
