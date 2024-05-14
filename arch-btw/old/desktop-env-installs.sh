#!/bin/bash
cat << "EOF" 
______          _    _                                           
|  _  \        | |  | |                                          
| | | |___  ___| | _| |_ ___  _ __                               
| | | / _ \/ __| |/ / __/ _ \| '_ \                              
| |/ /  __/\__ \   <| || (_) | |_) |                             
|___/ \___||___/_|\_\\__\___/| .__/                              
                             | |                                 
                             |_|                                 
 _____           _                                      _        
|  ___|         (_)                                    | |       
| |__ _ ____   ___ _ __ ___  _ __  _ __ ___   ___ _ __ | |_      
|  __| '_ \ \ / / | '__/ _ \| '_ \| '_ ` _ \ / _ \ '_ \| __|     
| |__| | | \ V /| | | | (_) | | | | | | | | |  __/ | | | |_      
\____/_| |_|\_/ |_|_|  \___/|_| |_|_| |_| |_|\___|_| |_|\__|     
                                                                 
                                                                 
 _____              __ _                       _   _             
/  __ \            / _(_)                     | | (_)            
| /  \/ ___  _ __ | |_ _  __ _ _   _ _ __ __ _| |_ _  ___  _ __  
| |    / _ \| '_ \|  _| |/ _` | | | | '__/ _` | __| |/ _ \| '_ \ 
| \__/\ (_) | | | | | | | (_| | |_| | | | (_| | |_| | (_) | | | |
 \____/\___/|_| |_|_| |_|\__, |\__,_|_|  \__,_|\__|_|\___/|_| |_|
                          __/ |                                  
                         |___/ 
EOF

echo
echo "Please select an option:"
echo "1. Customize KDE Plasma"
echo "2. Customize Gnome Desktop"
echo "3. Customize XFCE"
echo "x. Exit"
echo
read choice

case $choice in
    1)
        echo
        echo "Customize KDE Plasma"
        echo
        
	echo "Apps"
	sudo pacman -S kwalletmanager spectacle partitionmanager lm_sensors kcalc --noconfirm
	yay -S konsave --noconfirm

	echo "Konsave Profile Import"
	echo "Copy the files to ~/Downloads/konsave-profiles first!"
	echo "Press any key to continue:"
	read
	konsave -i ~/Downloads/konsave-profiles/baseline.knsv
	konsave -i ~/Downloads/konsave-profiles/baseline-stats.knsv

	echo "Apply Konsave Baseline Profile"
	konsave -a baseline-stats -f
        ;;
    2)
        echo
        echo "Customize Gnome Desktop"
        echo
        
	echo "Google Stuff"
	sudo pacman -S --needed seahorse gnome-online-accounts gvfs-goa gvfs-google --noconfirm
 
        echo "Apps"
        sudo pacman -S --needed pavucontrol --noconfirm

	echo "Theme Tweaks"
	gsettings set org.gnome.desktop.interface color-scheme prefer-dark

	echo "Nautilus Thumbnail Generation"
	sudo pacman -S --needed ffmpegthumbnailer gst-libav --noconfirm

	echo "Kitty Icon"
	sed -e "s|Icon=.*|Icon=$HOME/.config/kitty/kitty.app.png|" /usr/share/applications/kitty.desktop > ~/.local/share/applications/kitty.desktop

	echo "Gnome Extensions"
	sudo pacman -S --needed gnome-shell-extensions libgtop lm_sensors gnome-tweaks --noconfirm
	yay -S --needed gnome-browser-connector extension-manager adw-gtk3 gnome-icon-theme-symbolic gnome-icon-theme --noconfirm

	echo "ArcMenu Install"
	git clone https://gitlab.com/arcmenu/ArcMenu.git ~/.builds/ArcMenu
	cd ~/.builds/ArcMenu
	make install
	cd
        ;;
    3)
        echo
        echo "XFCE Things"
        echo
        
	echo "LightDM Management"
	sudo pacman -S --needed lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm
	yay -S --needed mugshot --noconfirm
	
	echo "Enable SMB"
	sudo pacman -S --needed gvfs-smb --noconfirm
	
	echo "Panel Management"
	yay -S --needed xfce4-panel-profiles --noconfirm
	mkdir ~/Downloads/xfce-profiles
	cp -rT ~/all-the-things/config-files/xfce/. ~/Downloads/xfce-profiles/
        ;;
    x)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid option. Try again."
        ;;
esac
