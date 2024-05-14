#!/bin/bash
# Master Script for All Things Arch
echo
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
while true; do
    echo
    echo "Arch Master Script"
    echo
    echo "What do you want to do?"
    echo
    echo "1. Update Arch w/ Snapshot"
    echo "2. Update Arch"
    echo "3. Install/Configure Apps for Desktops/Laptops"
    echo "4. Install/Configure Tailscale"
    echo "5. Install/Configure NoMachine"
    echo "6. Install Discord Fat Client"
    echo "7. Customize KDE Plasma"
    echo "8. Customize Gnome Desktop"
    echo "9. Customize XFCE Desktop"
    echo "10. Pacman/Yay Cleanup"
    echo "11. Run Fastfetch"
    echo "x. Exit Installer"
    echo

    read choice

    case $choice in
        1)
            echo
            echo "Update Arch w/ Snapshot"
            echo
            
            echo "Creating Snapshot"
            sudo timeshift --create --comments Normal-Update
            
            echo "Running Yay"
            yay
            
            echo "Updating Flatpak"
            flatpak update
            
            echo
            echo "Package Summary"
            yay -Ps
            
    	    echo
            echo "Job Done!  Press any key to continue!"
            read
            ;;
        2)
            echo
            echo "Update Arch"
            echo
            
            echo "Running Yay"
            yay
            
            echo "Updating Flatpak"
            flatpak update
            
            echo "Summary"
            yay -Ps
            
    	    echo
            echo "Job Done!  Press any key to continue!"
            read
            ;;
        3)
            echo
            echo "Installing Apps for Desktops/Laptops"
            echo
            
            echo "Installing Multimedia Things"
            sudo pacman -S --needed audacious spotify-launcher yt-dlp vlc --noconfirm
            yay -S --needed cli-visualizer plex-media-player --noconfirm
            cp -rT ~/all-the-things/yt-dl/ ~/Downloads/yt-dl/

            echo "Vis Configs"
            mkdir -p ~/.config/vis/colors
            cp -rT ~/all-the-things/config-files/dot-files/vis/config ~/.config/vis/config
            cp -rT ~/all-the-things/config-files/dot-files/vis/colors/. ~/.config/vis/colors/

            echo "Installing Editing Apps"
            sudo pacman -S --needed pinta krita kdenlive ardour obs-studio flowblade --noconfirm

            echo "Installing Misc apps"
            sudo pacman -S --needed bitwarden --noconfirm
            yay -S --needed drawio-desktop-bin usbimager zoom --noconfirm

            echo "Installing Font-Repo"
            mkdir ~/.local/share/fonts
            cp -rvT ~/all-the-things/fonts ~/.local/share/fonts/

            echo "Bluetooth Things"
            sudo pacman -S --needed bluez blueman bluez-utils --noconfirm
            sudo systemctl start bluetooth.service
            sudo systemctl enable bluetooth.service
            
    	    echo
            echo "Job Done!  Press any key to continue!"
            read
            ;;
        4)
            echo
            echo "Installing Tailscale"
            echo
            
            echo "Install"
            sudo pacman -S --needed tailscale --noconfirm

            echo "Enabling Service"
            sudo systemctl enable --now tailscaled

            echo "Initial Config"
            sudo tailscale up
            
    	    echo
            echo "Job Done!  Press any key to continue!"
            read
            ;;
        5)
            echo
            echo "Installing NoMachine"
            echo
            
            yay -S --needed nomachine --noconfirm
            
    	    echo
            echo "Job Done!  Press any key to continue!"
            read
            ;;
        6)
            echo
            echo "Installing Discord Fat Client"
            echo

            sudo pacman -S --needed discord --noconfirm
            yay -S --needed discord-update-skip-git --noconfirm

    	    echo
            echo "Job Done!  Press any key to continue!"
            read
            ;;
        7)
            echo
            echo "Customize KDE Plasma"
            echo
        
            echo "Apps"
            sudo pacman -S --needed kwalletmanager spectacle partitionmanager lm_sensors kcalc gwenview --noconfirm
            yay -S --needed konsave --noconfirm

            echo "Wallpapers"
            sudo mkdir /usr/share/wallpapers/my-custom
            sudo mkdir /usr/share/wallpapers/archlinux-wallpaper
            sudo cp -rT ~/all-the-things/images/wallpapers /usr/share/wallpapers/my-custom
            sudo cp -rT /usr/share/backgrounds/archlinux /usr/share/wallpapers/archlinux-wallpaper

            echo "Konsave Profile Import"
            konsave -i ~/all-the-things/config-files/konsave/baseline.knsv
            konsave -i ~/all-the-things/config-files/konsave/baseline-stats.knsv

            echo "Apply Konsave Baseline-Stats Profile"
            konsave -a baseline-stats -f
	    
    	    echo
            echo "Job Done!  Press any key to continue!"
            read
            ;;
        8)
            echo
            echo "Customize Gnome Desktop"
            echo
        
            echo "Google Stuff"
            sudo pacman -S --needed seahorse gnome-online-accounts gvfs-goa gvfs-google --noconfirm

            echo "Apps"
            sudo pacman -S --needed pavucontrol --noconfirm

            echo "Theme Tweaks"
            gsettings set org.gnome.desktop.interface color-scheme prefer-dark

            echo "Images and Wallpaper"
            sudo cp -rT ~/all-the-things/images/wallpapers /usr/share/backgrounds/my-wallpapers
            cp -rT ~/all-the-things/images/wallpapers ~/.local/share/backgrounds
            sudo cp -rT ~/all-the-things/images/icons /usr/share/backgrounds/icons

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
            
            echo
            echo "Job Done!  Press any key to continue!"
            read
            ;;
        9)
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

            echo
            echo "Job Done!  Press any key to continue!"
            read
            ;;

        10)
            echo
            echo "Pacman/Yay Cleanup"
            echo
            echo "Pre-Summary"
            yay -Ps
            echo "Press any key to continue!"
            read
            
            echo "Cleaning Pacman Cache (Keeping 1 Previous Version)"
            sudo paccache -rk1
	    
            echo "Cleaning Yay Cache"
            yay -Sca

            echo "Removing Orphaned Packages"
            yay -Rns $(yay -Qtdq)

            echo "Post-Summary"
            yay -Ps

            echo
            echo "Job Done!  Press any key to continue!"
            read
            ;;
        11)
            echo
            echo "Running Fastfetch"
            echo
            
            fastfetch
            
            echo
            echo "Job Done!  Press any key to continue!"
            read
            ;;
        x)
            echo
            echo "Job Done!  Exiting..."
            echo
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
