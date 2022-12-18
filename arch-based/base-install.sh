#!/bin/bash
echo Base Install - intended for any Arch-based machine running GNOME

echo :::::::
echo Initial Update
cd
sudo pacman -Syu --noconfirm
sudo pacman -Sy --needed base-devel git --noconfirm

echo :::::::
echo Installing Yay
cd
git clone https://aur.archlinux.org/yay-bin
cd yay-bin
makepkg -si --noconfirm
cd
cd install-repo-arch

echo :::::::
echo Importing Terminal Profile
sudo pacman -S --needed dconf-editor --noconfirm
dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < ~/all-the-things/config-files/terminal-profile.dconf

echo :::::::
echo Installing Google Drive Dependencies
sudo pacman -S gnome-online-accounts gvfs-goa gvfs-google --noconfirm

echo :::::::
echo Installing Snap
sudo pacman -S snapd --noconfirm
sudo systemctl enable --now snapd.socket
sudo systemctl status snapd.socket
echo Reboot require prior to package installation!!

echo :::::::
echo Installing Chrome
sudo pacman -S --needed seahorse --noconfirm
cd
git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome
makepkg -is --noconfirm
cd
cd install-repo-arch

echo :::::::
echo Removing Firefox
sudo pacman -R firefox-gnome-theme-maia --noconfirm
sudo pacman -R firefox --noconfirm

echo :::::::
echo Installing Gnome Extensions
sudo pacman -S --needed gnome-shell-extensions --noconfirm
sudo pacman -Syu --needed libgtop lm_sensors gnome-icon-theme-symbolic gnome-icon-theme-git --noconfirm
yay -S --needed gnome-shell-extension-pop-shell --noconfirm

echo :::::::
echo Installing Discord, Neofetch, Pulse Audio Control, MPV, Bashtop 
sudo pacman -S --needed discord neofetch pavucontrol mpv bashtop --noconfirm

echo :::::::
echo Job Done!!
echo Reboot Needed!!
echo :::::::
echo Post Install Notes
echo -- Reboot and run this script again!
echo -- After reboot, enable Pop-Shell in Extensions app
read
