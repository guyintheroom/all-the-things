#!/bin/bash
echo Base Install - Arch-based machines running GNOME

# Initial Things
cd
sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel git --noconfirm
git config --global core.editor nano
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

# Changing MAKEPKG to use all threads
sudo cp -rT ~/all-the-things/config-files/arch/makepkg.conf /etc/makepkg.conf

# Installing Yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd

# Installing Misc Apps
sudo pacman -S --needed seahorse neofetch discord pavucontrol mpv inkscape vlc yt-dlp archlinux-wallpaper unrar --noconfirm
yay -S --needed rpi-imager --noconfirm

# Installing Necessary Fonts
yay -S ttf-meslo-nerd-font-powerlevel10k --noconfirm

# Google Drive and Chrome
sudo pacman -S --needed gnome-online-accounts gvfs-goa gvfs-google --noconfirm
yay -S --needed google-chrome --noconfirm

# Removing Firefox
sudo pacman -R firefox-gnome-theme-maia --noconfirm
sudo pacman -R firefox --noconfirm

# Gnome Extensions
sudo pacman -S --needed gnome-shell-extensions --noconfirm
sudo pacman -S --needed libgtop lm_sensors gnome-icon-theme-symbolic gnome-icon-theme-git --noconfirm
sudo pacman -S --needed gnome-tweaks --noconfirm
sudo pacman -S --needed pacman-contrib --noconfirm
yay -S --needed gnome-browser-connector --noconfirm
yay -S --needed extension-manager --noconfirm
yay -S --needed adw-gtk3 --noconfirm

# Terminal Things
sudo pacman -S alacritty zsh zsh-completions --noconfirm
yay -S alacritty-themes oh-my-zsh-git zsh-fsf-plugin-git oh-my-zsh-plugin-syntax-highlighting oh-my-zsh-plugin-autosuggestions pokemon-colorscripts-git --noconfirm
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
#cp -rT ~/all-the-things/config-files/arch/dot-files/alacritty.yml ~/.config/alacritty/alacritty.yml
echo Terminal Prep Complete
echo Press Any Key to Continue
read
#chsh -s /usr/bin/zsh

echo :::::::
echo Job Done!!
echo Reboot Needed!!
echo :::::::
