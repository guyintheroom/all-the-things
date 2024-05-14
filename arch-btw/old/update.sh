#!/bin/bash
# Arch Update Script
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
    echo "Arch Update Script"
    echo
    echo "What do you want to do?"
    echo
    echo "1. Standard Update w/ Snapshot"
    echo "2. Standard Update"
    echo "3. Pacman/Yay Cleanup"
    echo "4. Run Fastfetch"
    echo "x. Exit Installer"
    echo

    read choice

    case $choice in
        1)
            echo
            echo "Standard Update w/ Snapshot"
            echo
            
            echo "Creating Snapshot"
            sudo timeshift --create --comments Normal-Update
            
            echo "Running Yay"
            yay
            
            echo "Updating Flatpak"
            flatpak update
            
            echo "Summary"
            yay -Ps
            ;;
        2)
            echo
            echo "Standard Update"
            echo
            
            echo "Running Yay"
            yay
            
            echo "Updating Flatpak"
            flatpak update
            
            echo "Summary"
            yay -Ps
            ;;
        3)
            echo
            echo "Pacman/Yay Cleanup"
            echo
            
            echo "Cleaning Pacman Cache (Keeping 1 Previous Version)"
            sudo paccache -rk1
	    
	    echo "Cleaning Yay Cache"
	    yay -Sca
	    
	    echo "Removing Orphaned Packages"
	    yay -Rns $(yay -Qtdq)
	    
	    echo "Summary"
	    yay -Ps
            ;;
        4)
            echo
            echo "Running Fastfetch"
            echo
            
            fastfetch
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
