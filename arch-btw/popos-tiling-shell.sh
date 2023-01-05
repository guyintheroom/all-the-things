#!/bin/bash
echo Installing PopOS Tiling Shell
echo This will probably crash gnome
echo Press the any key to continue
read

echo :::::::
# Going Home
cd

# Installing Dependencies
sudo pacman -S --needed git typescript make

# Cloning Repo
git clone https://github/pop-os/shell.git

# Build Package
cd shell
make local-install

echo :::::::
echo Job Done!!
