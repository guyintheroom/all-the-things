#!/bin/bash
# Update Script for Arch Machines

# Snapshot
echo :::::::
echo Taking Snapshot
echo :::::::
sudo timeshift --create --comments update

# System Updates
echo :::::::
echo Updating System
echo :::::::
yay

# Flatpak Updates
echo :::::::
echo Updating Flatpak
echo :::::::
flatpak update

# Cleaning Up
echo :::::::
echo Cleaning Up
echo :::::::
sudo paccache -rk2

echo :::::::
echo Job Done!
echo :::::::
