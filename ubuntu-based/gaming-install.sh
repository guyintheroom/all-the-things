#!/bin/bash
echo This will install gaming related software

# Steam Install
sudo nala install steam-installer -y

# Heroic Launcher Install (Epic)
bash <(wget -qO- https://raw.githubusercontent.com/Heroic-Games-Launcher/HeroicGamesLauncher/main/rauldipeas.sh)

# Lutris Install
sudo nala install lutris -y

# Notes/Readme

# Steam:
#	Install Proton from Steam - Under Tools - Install latest package

#Lutris: Non-Steam Games
#	Preferences > Runners
#	Click on the download button for Wine > Select the latest version of Proton
#	Back in the settings > Click the gear on Wine
#	Select the version of Proton you just downloaded under the “Wine Version”

echo Job Done!!
read
