#!/bin/bash
echo # Installs Tailscale

echo # Installing
sudo pacman -S --needed tailscale --noconfirm

echo # Enabling Service
sudo systemctl enable --now tailscaled

echo # Initial Config
sudo tailscale up

# Complete!
cat << "EOF" 
   ___       _      ______                 _ 
  |_  |     | |     |  _  \               | |
    | | ___ | |__   | | | |___  _ __   ___| |
    | |/ _ \| '_ \  | | | / _ \| '_ \ / _ \ |
/\__/ / (_) | |_) | | |/ / (_) | | | |  __/_|
\____/ \___/|_.__/  |___/ \___/|_| |_|\___(_) 
EOF
