#!/bin/bash
echo Music Player Installs

# Spotify
sudo nala install curl -y
#curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo nala update
sudo nala install spotify-client -y

# Audacious
sudo nala install audacious

echo Job Done!!
read
