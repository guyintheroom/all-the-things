#!/bin/bash
echo Auto Tiling Shell Install

echo :::::::
echo Installing Pop-OS Auto Tiling Shell
echo This may cause gnome to crash
sudo nala install node-typescript make git -y
cd
git clone https://github.com/pop-os/shell
cd shell
make local-install
cd
cd install-repo-debian

echo :::::::
echo Installing Pop-OS Shell Shortcuts
sudo nala install cargo libgtk-3-dev rustc -y
cd
git clone https://github.com/pop-os/shell-shortcuts
cd shell-shortcuts
sudo make install
cd
cd install-repo-debian

echo :::::::
echo Job Done!!
read
