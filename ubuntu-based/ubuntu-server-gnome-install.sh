#!/bin/bash
echo Adding a Desktop Environment to Ubuntu Server!!

echo :::::::
# Initial Update
sudo apt update
sudo apt upgrade -y

echo :::::::
echo Installing Display Manager
sudo apt install lightdm -y

echo :::::::
echo Force GUI at Startup
sudo systemctl set-default graphical.target

echo :::::::
echo Installing the DE
sudo apt install ubuntu-desktop-minimal -y

echo :::::::
echo Changing Network Settings - Don't do this on Linode!!
echo Find the Config in /etc/netplan
echo Add the line - renderer: NetworkManager
echo sudo netplan apply

echo :::::::
echo REBOOT IS REQUIRED!!
echo :::::::
echo Job Done!!
