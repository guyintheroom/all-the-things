#!/bin/bash
# Debian Base Server Install

# Initial Things
cd
sudo apt update
sudo apt upgrade -y

# Installing Basic Apps
sudo apt install nala -y
sudo nala install neofetch timeshift curl docker.io

echo :::::::
echo Job Done!
echo Reboot Required!
echo :::::::
