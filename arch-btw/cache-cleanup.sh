#!/bin/bash
# Pacman & Yay Cache Cleanup for Arch Machines

# Snapshot
cat << "EOF" 
 _____     _    _                            
|_   _|   | |  (_)                           
  | | __ _| | ___ _ __   __ _                
  | |/ _` | |/ / | '_ \ / _` |               
  | | (_| |   <| | | | | (_| |               
  \_/\__,_|_|\_\_|_| |_|\__, |               
                         __/ |               
                        |___/                
 _____                       _           _   
/  ___|                     | |         | |  
\ `--. _ __   __ _ _ __  ___| |__   ___ | |_ 
 `--. \ '_ \ / _` | '_ \/ __| '_ \ / _ \| __|
/\__/ / | | | (_| | |_) \__ \ | | | (_) | |_ 
\____/|_| |_|\__,_| .__/|___/_| |_|\___/ \__|
                  | |                        
                  |_|              

EOF
sudo timeshift --create --comments deep-cleaning

# Removing Orphaned Packages
cat << "EOF"                       
______                                  
| ___ \                                 
| |_/ /_ _  ___ _ __ ___   __ _ _ __    
|  __/ _` |/ __| '_ ` _ \ / _` | '_ \   
| | | (_| | (__| | | | | | (_| | | | |  
\_|  \__,_|\___|_| |_| |_|\__,_|_| |_|  
                                        
                                        
 _____            _                     
|  _  |          | |                    
| | | |_ __ _ __ | |__   __ _ _ __  ___ 
| | | | '__| '_ \| '_ \ / _` | '_ \/ __|
\ \_/ / |  | |_) | | | | (_| | | | \__ \
 \___/|_|  | .__/|_| |_|\__,_|_| |_|___/
           | |                          
           |_| 


EOF
sudo pacman -Rns $(pacman -Qtdq)

# Cleaning Out Yay Cache
cat << "EOF" 
__   __                      
\ \ / /                      
 \ V /__ _ _   _             
  \ // _` | | | |            
  | | (_| | |_| |            
  \_/\__,_|\__, |            
            __/ |            
           |___/             
 _____            _          
/  __ \          | |         
| /  \/ __ _  ___| |__   ___ 
| |    / _` |/ __| '_ \ / _ \
| \__/\ (_| | (__| | | |  __/
 \____/\__,_|\___|_| |_|\___|  


EOF
yay -Scc

# Complete!
cat << "EOF" 
   ___       _      ______                 _ 
  |_  |     | |     |  _  \               | |
    | | ___ | |__   | | | |___  _ __   ___| |
    | |/ _ \| '_ \  | | | / _ \| '_ \ / _ \ |
/\__/ / (_) | |_) | | |/ / (_) | | | |  __/_|
\____/ \___/|_.__/  |___/ \___/|_| |_|\___(_)
EOF
