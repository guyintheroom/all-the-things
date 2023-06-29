#!/bin/bash
echo Base Install - Arch-based machines running GNOME

# Initial Things
cd
sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel git --noconfirm
git config --global core.editor nano
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

# Changing MAKEPKG to use all threads
sudo cp -rT ~/all-the-things/config-files/dot-files/makepkg.conf /etc/makepkg.conf

# Installing Yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd

# Installing Misc Apps
sudo pacman -S --needed seahorse neofetch discord pavucontrol inkscape vlc yt-dlp archlinux-wallpaper unrar --noconfirm
yay -S --needed rpi-imager --noconfirm

# Installing Necessary Fonts
yay -S ttf-meslo-nerd-font-powerlevel10k --noconfirm

# Google Drive and Chrome
sudo pacman -S --needed gnome-online-accounts gvfs-goa gvfs-google --noconfirm
yay -S --needed google-chrome --noconfirm

# Gnome Extensions
sudo pacman -S --needed gnome-shell-extensions --noconfirm
sudo pacman -S --needed libgtop lm_sensors gnome-icon-theme-symbolic gnome-icon-theme-git --noconfirm
sudo pacman -S --needed gnome-tweaks --noconfirm
sudo pacman -S --needed pacman-contrib --noconfirm
yay -S --needed gnome-browser-connector --noconfirm
yay -S --needed extension-manager --noconfirm
yay -S --needed adw-gtk3 --noconfirm

# Terminal Things

# Pre-Reqs and Emulator
sudo pacman -S alacritty zsh zsh-completions --noconfirm
yay -S alacritty-themes --noconfirm
mkdir ~/.config/alacritty
cp -rT ~/all-the-things/config-files/dot-files/alacritty.yml ~/.config/alacritty/alacritty.yml

# Plugins
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/zsh-plugins/powerlevel10k
echo 'source ~/.config/zsh-plugins/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

git clone https://github.com/zdharma-continuum/fast-syntax-highlighting ~/.config/zsh-plugins/fsh
echo 'source ~/.config/zsh-plugins/fsh/fast-syntax-highlighting.plugin.zsh' >>~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh-plugins/zsh-autosuggestions
echo 'source ~/.config/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh' >>~/.zshrc

yay -S pokemon-colorscripts-git --noconfirm

# Dot Files
cp -rT ~/all-the-things/config-files/dot-files/.p10k.zsh ~/.p10k.zsh
cp -rT ~/all-the-things/config-files/dot-files/.zshrc ~/.zshrc

echo Changing from Bash to ZSH
echo Password is required to continue:
read
chsh -s /usr/bin/zsh

echo :::::::
echo Job Done!!
echo Reboot Needed!!
echo :::::::
