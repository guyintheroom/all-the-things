#!/bin/bash
echo Base Install - Arch-based machines running GNOME

echo :::::::
echo Initial Things
cd
sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel git --noconfirm
git config --global core.editor nano

echo :::::::
echo Installing Yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd

echo :::::::
echo Installing Snap
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si --noconfirm
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
cd

echo :::::::
echo Installing Fonts
yay -S pop-fonts --noconfirm
yay -S ttf-roboto-slabs --noconfirm
yay -S ttf-ubuntu-font-family --noconfirm

echo :::::::
echo Installing Icon Themes
yay -S yaru-icon-theme --noconfirm
yay -S bibata-cursor-theme --noconfirm

echo :::::::
echo Gnome Terminal Things
yay -S --needed gnome-terminal-transparency --noconfirm
sudo pacman -S --needed dconf-editor --noconfirm
dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < ~/all-the-things/config-files/terminal-profile.dconf

echo :::::::
echo Installing Google Drive Dependencies
sudo pacman -S gnome-online-accounts gvfs-goa gvfs-google --noconfirm

echo :::::::
echo Installing Gnome Keyring
sudo pacman -S --needed seahorse --noconfirm

echo :::::::
echo Installing Google Chrome
git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome
makepkg -si --noconfirm
cd

echo :::::::
echo Removing Firefox
sudo pacman -R firefox-gnome-theme-maia --noconfirm
sudo pacman -R firefox --noconfirm

echo :::::::
echo Installing Gnome Extensions
sudo pacman -S --needed gnome-shell-extensions --noconfirm
sudo pacman -S --needed libgtop lm_sensors gnome-icon-theme-symbolic gnome-icon-theme-git --noconfirm
sudo pacman -S --needed gnome-tweaks --noconfirm
git clone https://aur.archlinux.org/gnome-browser-connector
cd gnome-browser-connector
makepkg -si --noconfirm
cd

echo :::::::
echo Installing Random Apps
sudo pacman -S --needed discord neofetch pavucontrol mpv --noconfirm

echo :::::::
echo Job Done!!
echo Reboot Needed!!
echo :::::::
