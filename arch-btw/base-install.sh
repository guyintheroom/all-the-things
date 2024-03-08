#!/bin/bash
# Base Install for Arch Machines
cat << "EOF" 
                   -`
                  .o+`
                 `ooo/
                `+oooo:
               `+oooooo:
               -+oooooo+:
             `/:-:++oooo+:
            `/++++/+++++++:
           `/++++++++++++++:
          `/+++ooooooooooooo/`
         ./ooosssso++osssssso+`
        .oossssso-````/ossssss+`
       -osssssso.      :ssssssso.
      :osssssss/        osssso+++.
     /ossssssss/        +ssssooo/-
   `/ossssso+/:-        -:/+osssso+-
  `+sso+:-`                 `.-/+oso:
 `++:.                           `-/+/
 .`                                 ` 


EOF
# Initial Things
cat << "EOF" 
______                _ _              _____          _        _ _ 
| ___ \              | (_)            |_   _|        | |      | | |
| |_/ / __ _ ___  ___| |_ _ __   ___    | | _ __  ___| |_ __ _| | |
| ___ \/ _` / __|/ _ \ | | '_ \ / _ \   | || '_ \/ __| __/ _` | | |
| |_/ / (_| \__ \  __/ | | | | |  __/  _| || | | \__ \ || (_| | | |
\____/ \__,_|___/\___|_|_|_| |_|\___|  \___/_| |_|___/\__\__,_|_|_|   


EOF
cd
mkdir ~/.builds
sudo mkdir /mnt/shares
sudo cp -rT ~/all-the-things/config-files/dot-files/pacman.conf /etc/pacman.conf
sudo cp -rT ~/all-the-things/config-files/dot-files/makepkg.conf /etc/makepkg.conf
sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel git pacman-contrib --noconfirm
git config --global core.editor nano

# Installing Yay
cat << "EOF" 
__   __          _ 
\ \ / /         | |
 \ V /__ _ _   _| |
  \ // _` | | | | |
  | | (_| | |_| |_|
  \_/\__,_|\__, (_)
            __/ |  
           |___/    


EOF
git clone https://aur.archlinux.org/yay.git ~/.builds/yay
cd ~/.builds/yay
makepkg -si --noconfirm
cd

# Installing Standard Apps
cat << "EOF" 
 _____ _                  _               _    ___                  
/  ___| |                | |             | |  / _ \                 
\ `--.| |_ __ _ _ __   __| | __ _ _ __ __| | / /_\ \_ __  _ __  ___ 
 `--. \ __/ _` | '_ \ / _` |/ _` | '__/ _` | |  _  | '_ \| '_ \/ __|
/\__/ / || (_| | | | | (_| | (_| | | | (_| | | | | | |_) | |_) \__ \
\____/ \__\__,_|_| |_|\__,_|\__,_|_|  \__,_| \_| |_/ .__/| .__/|___/
                                                   | |   | |        
                                                   |_|   |_|    


EOF
sudo pacman -S --needed neofetch fastfetch pavucontrol inkscape yt-dlp archlinux-wallpaper unrar arch-audit syncthing tailscale --noconfirm
yay -S --needed google-chrome timeshift mission-center mkinitcpio-firmware downgrade rate-mirrors-bin neo-matrix-git --noconfirm
cp -rT ~/all-the-things/yt-dl/ ~/Downloads/yt-dl/

# Syncthing Service
sudo systemctl enable --now syncthing@$USER.service

# All Things Themes!
cat << "EOF" 
 _____ _                              _ 
|_   _| |                            | |
  | | | |__   ___ _ __ ___   ___  ___| |
  | | | '_ \ / _ \ '_ ` _ \ / _ \/ __| |
  | | | | | |  __/ | | | | |  __/\__ \_|
  \_/ |_| |_|\___|_| |_| |_|\___||___(_)   


EOF
# Copying Images to location
sudo cp -rT ~/all-the-things/images/wallpapers /usr/share/backgrounds/my-wallpapers
cp -rT ~/all-the-things/images/wallpapers ~/.local/share/backgrounds
sudo cp -rT ~/all-the-things/images/icons /usr/share/backgrounds/icons

# Installing Fonts
yay -S pop-fonts ttf-roboto-slab ttf-ubuntu-font-family inter-font --noconfirm

# Installing Icon Themes
yay -S yaru-icon-theme --noconfirm
yay -S bibata-cursor-theme --noconfirm

# Terminal Witchcraft!
cat << "EOF" 
 _____                   _             _   _____      _               
|_   _|                 (_)           | | /  ___|    | |              
  | | ___ _ __ _ __ ___  _ _ __   __ _| | \ `--.  ___| |_ _   _ _ __  
  | |/ _ \ '__| '_ ` _ \| | '_ \ / _` | |  `--. \/ _ \ __| | | | '_ \ 
  | |  __/ |  | | | | | | | | | | (_| | | /\__/ /  __/ |_| |_| | |_) |
  \_/\___|_|  |_| |_| |_|_|_| |_|\__,_|_| \____/ \___|\__|\__,_| .__/ 
                                                               | |    
                                                               |_|     


EOF
# Pre-Reqs and Kitty Emulator
sudo pacman -S --needed kitty zsh zsh-completions tldr speedtest-cli thefuck bat glances nethogs dust --noconfirm
yay -S --needed ttf-meslo-nerd-font-powerlevel10k zsh-theme-powerlevel10k-git --noconfirm
# Add Kitty Configs
mkdir ~/.config/kitty
cp -rT ~/all-the-things/config-files/dot-files/kitty/. ~/.config/kitty/

# Plugins
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/zsh-plugins/powerlevel10k
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting ~/.config/zsh-plugins/fsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh-plugins/zsh-autosuggestions
yay -S pokemon-colorscripts-git neo-matrix-git --noconfirm

# Copy General Dot Files
cp -rT ~/all-the-things/config-files/dot-files/.p10k.zsh ~/.p10k.zsh
cp -rT ~/all-the-things/config-files/dot-files/.zshrc ~/.zshrc
cp -rT ~/all-the-things/config-files/dot-files/.bashrc ~/.bashrc
cp -rT ~/all-the-things/config-files/dot-files/.aliases ~/.aliases

# Enabling Zsh
echo Changing from Bash to Zsh
echo Script Paused - Password Needed During Next Step:
read
chsh -s /usr/bin/zsh

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
