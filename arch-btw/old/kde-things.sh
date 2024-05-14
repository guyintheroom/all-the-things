#!/bin/bash
echo # Installs KDE Specific Things

echo # Basic Apps
sudo pacman -S kwalletmanager spectacle partitionmanager lm_sensors kcalc --noconfirm
yay -S konsave --noconfirm

echo # Konsave Profile Importing
echo Importing Konsave profiles
echo Copy the files to ~/Downloads/konsave-profiles first!
echo Press any key to continue:
read
konsave -i ~/Downloads/konsave-profiles/baseline.knsv
konsave -i ~/Downloads/konsave-profiles/baseline-stats.knsv

echo # Apply Konsave Baseline Profile
konsave -a baseline-stats -f

# Complete!
cat << "EOF" 
   ___       _      ______                 _ 
  |_  |     | |     |  _  \               | |
    | | ___ | |__   | | | |___  _ __   ___| |
    | |/ _ \| '_ \  | | | / _ \| '_ \ / _ \ |
/\__/ / (_) | |_) | | |/ / (_) | | | |  __/_|
\____/ \___/|_.__/  |___/ \___/|_| |_|\___(_)
EOF
