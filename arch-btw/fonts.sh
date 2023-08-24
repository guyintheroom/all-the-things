#!/bin/bash
# Installing Extra Fonts

# Downloading Repo
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1ehcOeCQN7xldmPwQ9rc9JxULlGd8Dpjz' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1ehcOeCQN7xldmPwQ9rc9JxULlGd8Dpjz" -O ~/.builds/font-repo.tar.xz && rm -rf /tmp/cookies.txt

# Uncompressing
tar -xvf ~/.builds/font-repo.tar.xz -C ~/.builds/
chmod -R 700 ~/.builds/font-repo

# Copying Files
sudo mkdir -p /usr/local/share/fonts
sudo cp -rT ~/.builds/font-repo/ /usr/local/share/fonts/
sudo fc-cache

# Cleaning Up
rm ~/.builds/font-repo.tar.xz
sudo rm -r ~/.builds/font-repo

echo :::::::
echo Job Done!
echo :::::::
