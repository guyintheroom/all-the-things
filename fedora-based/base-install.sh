#!/bin/bash
echo Base Install - intended for any Fedora-based machine

echo :::::::
echo Initial Update
sudo dnf install -y fedora-workstation-repositories
sudo dnf update
sudo dnf upgrade -y

echo :::::::
echo Importing Terminal Profile
sudo dnf install -y dconf-editor
dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < terminal-profile.dconf

echo :::::::
echo Installing Chrome
sudo dnf config-manager --set enabled google-chrome
sudo dnf install -y google-chrome-stable

echo :::::::
echo Removing Firefox
sudo dnf remove firefox

echo :::::::
echo Installing Gnome Things
sudo dnf install -y gnome-shell-extensions
sudo dnf install -y gir1.2-gtop-2.0 lm-sensors
sudo dnf install -y gnome-tweaks
sudo dnf install -y gnome-shell-extension-pop-shell

echo :::::::
echo Installing General Apps
sudo dnf install neofetch
sudo dnf install pavucontrol
sudo dnf install mpv
sudo dnf install tldr
sudo dnf install trash-cli

echo :::::::
echo Job Done!!
read
