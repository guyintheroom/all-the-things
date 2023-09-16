#!/bin/bash
# Firefox Flatpak Installer

# Removing Old Version
sudo snap remove firefox

# Adding Repo
sudo add-apt-repository pps:mozillateam/ppa
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox

# Enable Updates
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox

# Installing Firefox
sudo nala install firefox

echo :::::::
echo Job Done!
echo :::::::
