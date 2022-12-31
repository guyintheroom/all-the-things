#!/bin/bash
echo Update Existing Chrome Installs

echo :::::::
cd ~/google-chrome
git pull
makepkg -si

echo :::::::
echo Job Done!!
