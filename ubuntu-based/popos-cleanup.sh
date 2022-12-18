#!/bin/bash
echo Post Install for Pop!OS Machines
echo Cleans out unused bundled sofware

echo :::::::
echo Removing Libre-Office
sudo apt remove --purge libreoffice*

echo :::::::
echo Disable Popshop on Startup
sudo systemctl disable pop-upgrade.service

echo :::::::
echo Job Done!!
read



