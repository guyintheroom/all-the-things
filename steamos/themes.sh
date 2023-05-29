#!/bin/bash
# Installing Icon and Cursor Themes

# Installing Fonts
yay -S pop-fonts --noconfirm
yay -S ttf-roboto-slabs --noconfirm
yay -S ttf-ubuntu-font-family --noconfirm
echo :::::::
echo Font Install Complete
echo Press Any Key to Continue
read

# Installing Icon Themes
yay -S yaru-icon-theme --noconfirm
yay -S bibata-cursor-theme --noconfirm
yay -S se98-icon-theme-git --noconfirm
yay -S elementary-icon-theme --noconfirm
echo :::::::
echo Icon Install Complete
echo Press Any Key to Continue
read

echo :::::::
echo Job Done!!
echo :::::::
