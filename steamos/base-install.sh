#!/bin/bash
echo Base Install - SteamOS on Steamdeck

# Pacman Prereqs
cd
sudo steamos-readonly disable
sudo pacman-key --init
sudo pacman-key --populate archlinux

# Initial Things
sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel git --noconfirm
git config --global core.editor nano

# Changing MAKEPKG to use all threads
sudo cp -rT ~/all-the-things/config-files/arch/makepkg.conf /etc/makepkg.conf

# Installing Yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd

# Installing Apps
sudo pacman -S --needed seahorse discord neofetch inkscape --noconfirm
yay -S --needed google-chrome --noconfirm

echo :::::::
echo Job Done!!
echo Reboot Needed!!
echo :::::::
