#!/bin/bash
# Adding a Desktop Environment to Ubuntu Server!

# Initial Update
sudo apt update
sudo apt upgrade -y

# Installing Display Manager
sudo apt install lightdm -y

# Force GUI at Startup
sudo systemctl set-default graphical.target

# Installing the DE
sudo apt install ubuntu-desktop-minimal -y

# Changing Network Settings - Don't do this on Linode!!
# Find the Config in /etc/netplan
# Add the line - renderer: NetworkManager
# sudo netplan apply

echo :::::::
echo REBOOT IS REQUIRED!
echo Job Done!
echo :::::::
