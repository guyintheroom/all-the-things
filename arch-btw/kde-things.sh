#!/bin/bash
echo # Installs KDE Specific Things

echo # Basic Apps
sudo pacman -S kwalletmanager spectacle partitionmanager --noconfirm
yay -S konsave --noconfirm

echo # Konsave Profile
konsave -i ~/all-the-things/config-files/konsave/baseline.knsv
konsave -fa baseline

# Complete!
cat << "EOF" 
   ___       _      ______                 _ 
  |_  |     | |     |  _  \               | |
    | | ___ | |__   | | | |___  _ __   ___| |
    | |/ _ \| '_ \  | | | / _ \| '_ \ / _ \ |
/\__/ / (_) | |_) | | |/ / (_) | | | |  __/_|
\____/ \___/|_.__/  |___/ \___/|_| |_|\___(_)
EOF
