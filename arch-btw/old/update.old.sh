#!/bin/bash
# Update Script for Arch Machines

# Snapshot
cat << "EOF"                
 _____                       _           _   
/  ___|                     | |         | |  
\ `--. _ __   __ _ _ __  ___| |__   ___ | |_ 
 `--. \ '_ \ / _` | '_ \/ __| '_ \ / _ \| __|
/\__/ / | | | (_| | |_) \__ \ | | | (_) | |_ 
\____/|_| |_|\__,_| .__/|___/_| |_|\___/ \__|
                  | |                        
                  |_|              


EOF
sudo timeshift --create --comments update

# System Updates
cat << "EOF" 
 _   _           _       _   _             
| | | |         | |     | | (_)            
| | | |_ __   __| | __ _| |_ _ _ __   __ _ 
| | | | '_ \ / _` |/ _` | __| | '_ \ / _` |
| |_| | |_) | (_| | (_| | |_| | | | | (_| |
 \___/| .__/ \__,_|\__,_|\__|_|_| |_|\__, |
      | |                             __/ |
      |_|                            |___/


EOF
yay

# Flatpak Updates
cat << "EOF" 
______ _       _               _      
|  ___| |     | |             | |     
| |_  | | __ _| |_ _ __   __ _| | __  
|  _| | |/ _` | __| '_ \ / _` | |/ /  
| |   | | (_| | |_| |_) | (_| |   <   
\_|   |_|\__,_|\__| .__/ \__,_|_|\_\  
                  | |                 
                  |_|                 


EOF
flatpak update

# Cleaning Up
cat << "EOF" 
 _____ _                              
/  __ \ |                             
| /  \/ | ___  __ _ _ __  _   _ _ __  
| |   | |/ _ \/ _` | '_ \| | | | '_ \ 
| \__/\ |  __/ (_| | | | | |_| | |_) |
 \____/_|\___|\__,_|_| |_|\__,_| .__/ 
                               | |    
                               |_|  


EOF
# Cleaning Pacman Cache (Keeping 1 Previous Version)
sudo paccache -rk1
# Cleaning Yay Cache
yay -Sca
# Remove Orphaned Packages
yay -Rns $(yay -Qtdq)
# Listing Installed Package Stats
yay -Ps

# Complete!
cat << "EOF" 
   ___       _      ______                 _ 
  |_  |     | |     |  _  \               | |
    | | ___ | |__   | | | |___  _ __   ___| |
    | |/ _ \| '_ \  | | | / _ \| '_ \ / _ \ |
/\__/ / (_) | |_) | | |/ / (_) | | | |  __/_|
\____/ \___/|_.__/  |___/ \___/|_| |_|\___(_)
EOF
