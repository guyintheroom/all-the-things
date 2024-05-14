#!/bin/bash
# Auto Tiling Shell Install

# Installing Pop-OS Auto Tiling Shell and Shortcuts - This may cause Gnome to crash
cd
sudo nala install node-typescript make git cargo libgtk-3-dev rustc -y
git clone https://github.com/pop-os/shell ~./builds/pop-os-shell
git clone https://github.com/pop-os/shell-shortcuts ~./builds/pop-os-shell-shortcuts
cd ~./builds/pop-os-shell
make local-install
pause
cd ~./builds/pop-os-shell-shortcuts
sudo make install

echo :::::::
echo Job Done!
echo :::::::
