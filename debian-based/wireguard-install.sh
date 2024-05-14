#!/bin/bash
# Installing Wireguard

sudo nala install wireguard openresolv -y

echo Configure:
echo Copy all the text in the configuration file from the server
echo Create a blank config file and paste the contents here:
echo sudo nano /etc/wireguard/wg0.conf

echo Job Done!
