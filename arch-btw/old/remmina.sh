#!/bin/bash
echo # Installs Remmina and Imports Connection Profiles

echo # Installing Remmina
sudo pacman -S --needed remmina freerdp libvncserver --noconfirm

echo # File Copy
echo Importing Remmina Configuration
echo Copy the files to ~/Downloads/remmina-configs first!
echo Press any key to continue:
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
                                             
                                             
______     _                 _   _           
| ___ \   | |               | | | |          
| |_/ /___| |__   ___   ___ | |_| |          
|    // _ \ '_ \ / _ \ / _ \| __| |          
| |\ \  __/ |_) | (_) | (_) | |_|_|          
\_| \_\___|_.__/ \___/ \___/ \__(_) 
EOF
