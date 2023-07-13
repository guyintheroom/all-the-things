#!/bin/bash
echo # Base Install for Arch Machines

echo # Initial Things
cd
sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel git --noconfirm
git config --global core.editor nano

echo # Changing MAKEPKG to use all threads
sudo cp -rT ~/all-the-things/config-files/dot-files/makepkg.conf /etc/makepkg.conf

echo # Installing Yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd

echo # Installing Misc Apps
sudo pacman -S --needed seahorse neofetch discord pavucontrol inkscape vlc yt-dlp archlinux-wallpaper unrar --noconfirm
yay -S --needed rpi-imager --noconfirm

echo # Installing Necessary Fonts
yay -S ttf-meslo-nerd-font-powerlevel10k --noconfirm

echo # Google Drive and Chrome
sudo pacman -S --needed gnome-online-accounts gvfs-goa gvfs-google --noconfirm
yay -S --needed google-chrome --noconfirm

echo # Terminal Witchcraft!
echo # Pre-Reqs and Emulator
sudo pacman -S alacritty zsh zsh-completions --noconfirm
yay -S alacritty-themes --noconfirm
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
echo Password is required to continue:
read
chsh -s /usr/bin/zsh

echo :::::::
echo Job Done!!
echo Reboot Required!!
echo :::::::
