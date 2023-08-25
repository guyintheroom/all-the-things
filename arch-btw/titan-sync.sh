#!/bin/bash
# Syncing Files with Titan's Linux Share

# Mounting Share
sudo mkdir /mnt/shares/titan-linux
sudo mount -t cifs -o username=guyintheroom //10.10.30.200/Linux /mnt/shares/titan-linux

# Copying
cp -rvT /mnt/shares/titan-linux/source whereever/


echo :::::::
echo Job Done!
echo :::::::
