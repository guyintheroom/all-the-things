#!/bin/bash
echo Discord Install

echo :::::::
echo Installing Discord
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i ~/discord.deb

echo :::::::
echo Job Done!!
read
