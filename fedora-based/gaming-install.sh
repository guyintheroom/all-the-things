#!/bin/bash
echo This will install gaming related software

# Steam Install
sudo dnf install -y libglvnd-glx libglvnd-opengl libglvnd-devel libxcb-devel
cd
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb
sudo dnf install -y steam.deb

# Heroic Launcher Install (Epic)
sudo dnf copr enable atim/heroic-games-launcher
sudo dnf install -y heroic-games-launcher

# Install Lutris


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
