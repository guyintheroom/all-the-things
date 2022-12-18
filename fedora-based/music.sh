#!/bin/bash
echo Music Player Installs

# Spotify
sudo rpm --import https://download.spotify.com/Keys/spotify-pubkey.gpg
sudo dnf config-manager --add-repo https://download.spotify.com/spotify-client/repository/fedora/non-free/spotify.repo
sudo dnf update
sudo dnf install -y spotify-client

# Audacious
sudo dnf install -y audacious

echo Job Done!!
read
