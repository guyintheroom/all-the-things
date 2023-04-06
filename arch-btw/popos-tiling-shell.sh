#!/bin/bash
echo Installing PopOS Tiling Shell
echo This will probably crash gnome
echo Press the any key to continue
read

echo :::::::
echo Installing Shell
cd
yay -S gnome-shell-extension-pop-shell-git --noconfirm

echo :::::::
echo Installing Shortcut Key Fix
sudo pacman -S --needed git typescript make --noconfirm
git clone https://github/pop-os/shell.git
cd shell
make local-install --noconfirm

echo :::::::
echo Job Done!!
