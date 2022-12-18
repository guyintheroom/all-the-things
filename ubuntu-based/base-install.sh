#!/bin/bash
echo Base Install - intended for any Ubuntu-based machine

echo :::::::
echo Initial Things
cd
sudo apt update
sudo apt upgrade -y

echo :::::::
echo Installing Nala
echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
sudo apt update
sudo apt install nala -y
echo pausing - if  this didn't work, restart this script
read

echo :::::::
echo Importing Terminal Profile
sudo nala install dconf-editor -y
dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < ~/all-the-things/config-files/terminal-profile.dconf

echo :::::::
echo Installing Chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo :::::::
echo Removing Firefox
sudo nala purge firefox -y
sudo snap remove firefox
echo pausing
read

echo :::::::
echo Installing Gnome Extensions
sudo nala install gnome-shell-extensions -y
sudo nala install gir1.2-gtop-2.0 lm-sensors -y
sudo nala install gnome-tweaks -y
sudo nala install gnome-shell-extension-manager -y

echo :::::::
echo Installing Random Apps
sudo nala install neofetch pavucontrol mpv bashtop tldr trash-cli cmatrix -y

echo :::::::
echo Job Done!!
read
