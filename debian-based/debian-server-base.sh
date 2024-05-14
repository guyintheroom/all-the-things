#!/bin/bash
# Debian Base Server Install

# Initial Things
cd
mkdir ~./builds
sudo apt update
sudo apt upgrade -y

# Installing Basic Apps
sudo apt install nala -y
sudo nala install neofetch timeshift curl docker.io -y
cp -rT ~/all-the-things/config-files/dot-files/.bash_aliases ~/.bash_aliases

echo :::::::
echo Job Done!
echo :::::::
