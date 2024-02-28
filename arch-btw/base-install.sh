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
sudo pacman -S --needed neofetch fastfetch pavucontrol inkscape yt-dlp archlinux-wallpaper unrar arch-audit syncthing tailscale --noconfirm
yay -S --needed google-chrome timeshift mission-center mkinitcpio-firmware downgrade rate-mirrors-bin neo-matrix-git --noconfirm
cp -rT ~/all-the-things/yt-dl/ ~/Downloads/yt-dl/

# Syncthing Service
sudo systemctl enable --now syncthing@$USER.service

# All Things Themes!
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
# Pre-Reqs and Kitty Emulator
sudo pacman -S --needed kitty zsh zsh-completions tldr speedtest-cli thefuck bat glances nethogs --noconfirm
yay -S --needed ttf-meslo-nerd-font-powerlevel10k zsh-theme-powerlevel10k-git --noconfirm
# Add Kitty Configs
mkdir ~/.config/kitty
cp -rT ~/all-the-things/config-files/dot-files/kitty/. ~/.config/kitty/
# Gnome Icon
sed -e "s|Icon=.*|Icon=$HOME/.config/kitty/kitty.app.png|" /usr/share/applications/kitty.desktop > ~/.local/share/applications/kitty.desktop

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

echo :::::::
echo Job Done!
echo Reboot Required!
echo :::::::
