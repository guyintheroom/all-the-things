#!/bin/bash
echo # Base Install for Arch Machines

echo # Initial Things
cd
mkdir ~/.builds
sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel git pacman-contrib --noconfirm
git config --global core.editor nano

echo # Changing MAKEPKG to use all threads
sudo cp -rT ~/all-the-things/config-files/dot-files/makepkg.conf /etc/makepkg.conf

echo # Installing Yay
git clone https://aur.archlinux.org/yay.git ~/.builds/yay
makepkg ~/.builds/yay -si --noconfirm

echo # Installing Basic Apps
sudo pacman -S --needed neofetch discord pavucontrol inkscape vlc yt-dlp archlinux-wallpaper unrar --noconfirm
yay -S --needed google-chrome rpi-imager timeshift --noconfirm

echo # Terminal Witchcraft!
echo # Pre-Reqs and Emulator
sudo pacman -S alacritty zsh zsh-completions tldr --noconfirm
yay -S alacritty-themes ttf-meslo-nerd-font-powerlevel10k --noconfirm
mkdir ~/.config/alacritty
cp -rT ~/all-the-things/config-files/dot-files/alacritty.yml ~/.config/alacritty/alacritty.yml

echo # Plugins
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/zsh-plugins/powerlevel10k
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting ~/.config/zsh-plugins/fsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh-plugins/zsh-autosuggestions
yay -S pokemon-colorscripts-git --noconfirm

echo # Dot Files
cp -rT ~/all-the-things/config-files/dot-files/.p10k.zsh ~/.p10k.zsh
cp -rT ~/all-the-things/config-files/dot-files/.zshrc ~/.zshrc

echo Changing from Bash to ZSH
echo Enter password at next step, press any key to continue:
read
chsh -s /usr/bin/zsh

echo :::::::
echo Job Done!!
echo Reboot Required!!
echo :::::::
