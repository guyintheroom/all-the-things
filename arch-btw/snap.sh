#!/bin/bash

echo :::::::
echo Installing Snap
# Enable the extra repository in pacman.conf
sudo sed -i '/\[extra\]/s/^#//g' /etc/pacman.conf
sudo sed -i '/Include/s/^#//g' /etc/pacman.conf
# Update the package database
sudo pacman -Sy
# Install the snapd package
sudo pacman -S snapd --noconfirm
# Enable the snapd service
sudo systemctl enable --now snapd.socket
# Install the snap command-line tool
sudo pacman -S snapd-glib --noconfirm
