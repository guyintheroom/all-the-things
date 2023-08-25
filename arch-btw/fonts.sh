#!/bin/bash
# Installing Extra Fonts

# Mounting Share
sudo mkdir /mnt/shares/titan-linux
sudo mount -t cifs -o username=guyintheroom //10.10.30.200/Linux /mnt/shares/titan-linux

# Copying Files
mkdir ~/.local/share/fonts
cp -rvT /mnt/shares/titan-linux/font-repo ~/.local/share/fonts/
sudo fc-cache

# Cleaning Up
rm ~/.builds/font-repo.tar.xz
sudo rm -r ~/.builds/font-repo

echo :::::::
echo Job Done!
echo :::::::
