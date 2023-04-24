#!/bin/bash
echo Base Install - Arch-based machines running GNOME

# Initial Things
cd
sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel git --noconfirm
git config --global core.editor nano

# Installing Yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd

# Installing Snap
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si --noconfirm
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
cd

# Installing Misc Apps
sudo pacman -S --needed seahorse discord neofetch pavucontrol mpv inkscape --noconfirm
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
yay -S --needed gnome-terminal-transparency --noconfirm
sudo pacman -S --needed dconf-editor --noconfirm
dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < ~/all-the-things/config-files/gnome-terminal/arch.dconf
sudo pacman -S zsh --noconfirm
yay -S --noconfirm zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
cp -rT ~/all-the-things/config-files/dot-files ~/
echo Terminal Prep Complete
echo Press Any Key to Continue
read
chsh -s /usr/bin/zsh

echo :::::::
echo Job Done!!
echo Reboot Needed!!
echo :::::::
