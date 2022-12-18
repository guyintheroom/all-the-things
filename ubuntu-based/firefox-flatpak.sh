#!/bin/bash
echo Firefox Flatpak Installer

echo :::::::
echo Removing Old Version
sudo snap remove firefox

echo :::::::
echo Adding Repo
sudo add-apt-repository pps:mozillateam/ppa
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox

echo :::::::
echo Enable Updates
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox

echo :::::::
echo Installing Firefox
sudo nala install firefox

echo :::::::
echo Job Done!!
read
