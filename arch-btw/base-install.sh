#!/bin/bash
# Base Install for Arch Machines

# Initial Things
cd
mkdir ~/.builds
sudo mkdir /mnt/shares
sudo cp -rT ~/all-the-things/config-files/dot-files/pacman.conf /etc/pacman.conf
sudo cp -rT ~/all-the-things/config-files/dot-files/makepkg.conf /etc/makepkg.conf
sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel git pacman-contrib --noconfirm
git config --global core.editor nano

# Installing Yay
git clone https://aur.archlinux.org/yay.git ~/.builds/yay
cd ~/.builds/yay
makepkg -si --noconfirm
cd

# Installing Basic Apps
sudo pacman -S --needed neofetch discord pavucontrol inkscape vlc yt-dlp archlinux-wallpaper unrar arch-audit syncthing --noconfirm
yay -S --needed google-chrome rpi-imager timeshift mission-center mkinitcpio-firmware downgrade rate-mirrors-bin --noconfirm
cp -rT ~/all-the-things/yt-dl/ ~/Downloads/yt-dl/

# Syncthing Service
sudo systemctl enable --now syncthing@$USER.service --noconfirm

# Terminal Witchcraft!
# Pre-Reqs and Emulator
sudo pacman -S --needed alacritty zsh zsh-completions tldr speedtest-cli thefuck bat --noconfirm
yay -S alacritty-themes ttf-meslo-nerd-font-powerlevel10k --noconfirm
mkdir ~/.config/alacritty
cp -rT ~/all-the-things/config-files/dot-files/alacritty.yml ~/.config/alacritty/alacritty.yml

# Plugins
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/zsh-plugins/powerlevel10k
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting ~/.config/zsh-plugins/fsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh-plugins/zsh-autosuggestions
yay -S pokemon-colorscripts-git --noconfirm

# Dot Files
cp -rT ~/all-the-things/config-files/dot-files/.p10k.zsh ~/.p10k.zsh
cp -rT ~/all-the-things/config-files/dot-files/.zshrc ~/.zshrc
cp -rT ~/all-the-things/config-files/dot-files/.bashrc ~/.bashrc
cp -rT ~/all-the-things/config-files/dot-files/.aliases ~/.aliases

echo Changing from Bash to ZSH
echo Script Paused - Password Needed During Next Step:
read
chsh -s /usr/bin/zsh

echo :::::::
echo Job Done!
echo Reboot Required!
echo :::::::
