#!/bin/bash
echo Discord Install

echo :::::::
echo Installing Discord
cd
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=tar.gz
tar xf discord.tar.gz
cd Discord*
sudo ./discord.sh

echo :::::::
echo Job Done!!
read
