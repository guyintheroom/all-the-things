#!/bin/bash
echo Base Install - Arch-based machines running GNOME
echo Press Any Key to Continue
read

echo :::::::
echo Initial Things
cd
sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel git --noconfirm
sudo pacman -S --needed gnome-terminal --noconfirm

echo :::::::
echo Installing Yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd

echo :::::::
echo Importing Terminal Profile
sudo pacman -S --needed dconf-editor --noconfirm
dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < ~/all-the-things/config-files/terminal-profile.dconf

echo :::::::
echo Installing Google Drive Dependencies
sudo pacman -S gnome-online-accounts gvfs-goa gvfs-google --noconfirm

echo :::::::
echo Installing Chrome
# Installing Gnome Keyring
sudo pacman -S --needed seahorse --noconfirm
# Chrome
git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome
makepkg -si
cd

#echo :::::::
#echo Removing Firefox
#sudo pacman -R firefox-gnome-theme-maia --noconfirm
#sudo pacman -R firefox --noconfirm

echo :::::::
echo Installing Gnome Extensions
sudo pacman -S --needed gnome-shell-extensions --noconfirm
sudo pacman -S --needed libgtop lm_sensors gnome-icon-theme-symbolic gnome-icon-theme-git --noconfirm
yay -S --needed gnome-shell-extension-pop-shell --noconfirm

echo :::::::
echo Installing Random Apps
sudo pacman -S --needed discord neofetch pavucontrol mpv --noconfirm

echo :::::::
echo Job Done!!
echo Reboot Needed!!
echo :::::::
read
