#!/bin/bash
echo Post DE Install for Linode Builds

echo :::::::
echo Notes:
echo	Things to do prior to running this script:
echo	Create an Admin Account
echo	Change the time/timezone
echo	Set Hostname

echo :::::::
echo Enter to Continue
read

echo :::::::
echo Initial Update
sudo apt update
sudo apt upgrade -y

echo :::::::
echo Installing Nala
echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
sudo apt update
sudo apt install nala -y

echo :::::::
echo Importing Terminal Profile
sudo nala install dconf-editor -y
dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < terminal-profile.dconf

echo :::::::
echo Installing Chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo :::::::
echo Removing Firefox
sudo nala purge firefox -y
sudo snap remove firefox

echo :::::::
echo Installing Discord
wget https://dl.discordapp.net/apps/linux/0.0.18/discord-0.0.18.deb
sudo nala install ./discord-0.0.18.deb -y

echo :::::::
echo Installing Neofetch
sudo nala install neofetch -y

echo :::::::
echo Installing Fail2Ban
sudo nala install fail2ban -y

echo :::::::
echo Job Done!!
echo :::::::
read
