#!/bin/bash
echo Custom Cursor Install

echo :::::::
echo Installing Gnome-Tweaks
sudo nala install gnome-tweaks -y

echo :::::::
echo Installing ArcMidnight
cd
git clone https://github.com/yeyushengfan258/ArcMidnight-Cursors.git
cd ArcMidnight-Cursors
sudo ./install.sh
cd
cd install-repo-debian

echo :::::::
echo Installing Bibata Modern Ice
cd cursors/
tar -xvf Bibata-Modern-Ice.tar.gz
sudo mv Bibata-Modern-Ice/ ~/.icons/
cd
cd install-repo-debian

echo :::::::
echo Job Done!!
echo Use gnome-tweaks to change the cursor
read
