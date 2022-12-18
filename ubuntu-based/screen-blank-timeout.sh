#!/bin/bash
echo Sets Screen-Blank-Timeout to 1 hour:

echo Setting Variable
gsettings set org.gnome.desktop.session idle-delay 3600

echo Verifying
gsettings get org.gnome.desktop.session idle-delay

echo Job Done!!
read
