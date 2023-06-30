#!/bin/bash
echo # Installing Wireguard

sudo pacman -S wireguard openresolv --noconfirm

echo # :::::::
echo # Job Done!!
echo # To Configure: Create a blank config file and paste the contents of the server key into it
echo # sudo nano /etc/wireguard/wg0.conf
echo # :::::::
