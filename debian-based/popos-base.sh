#!/bin/bash
# PopOS Base Install

# Initial Things
sudo apt update
sudo apt upgrade -y

# Installing Nala
echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
sudo apt update
sudo apt install nala -y

# Importing Terminal Profile
sudo nala install dconf-editor -y
dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < ~/all-the-things/config-files/dot-files/terminal-profile.dconf

# Installing Chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Removing Firefox
sudo nala purge firefox -y
sudo snap remove firefox

# Disable Pop Shop on Startup
sudo systemctl disable pop-upgrade.service

# Installing Snap
sudo nala install snap

echo :::::::
echo Job Done!
echo :::::::
