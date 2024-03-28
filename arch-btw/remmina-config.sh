#!/bin/bash
echo # Copies Remmina Configs

echo # Warning
echo Copy the remmina-configs folder from titan to downloads first!
echo Press any key to continue
read

echo # Copying dot-files
mkdir ~/.config/remmina
cp -rT ~/Downloads/remmina-configs/dot-files/. ~/.config/remmina/

echo # Copying Connection Profiles
mkdir ~/.local/share/remmina
cp -rT ~/Downloads/remmina-configs/connection-profiles/. ~/.local/share/remmina/

# Complete!
cat << "EOF" 
   ___       _      ______                 _ 
  |_  |     | |     |  _  \               | |
    | | ___ | |__   | | | |___  _ __   ___| |
    | |/ _ \| '_ \  | | | / _ \| '_ \ / _ \ |
/\__/ / (_) | |_) | | |/ / (_) | | | |  __/_|
\____/ \___/|_.__/  |___/ \___/|_| |_|\___(_)
EOF
