#!/bin/bash
echo VNC Server Install

echo :::::::
echo Getting Updates
sudo pacman -Syu --noconfirm
sudo pacman -S base-devel --noconfirm

echo :::::::
echo Installing RealVNC Server
wget https://github.com/azalinux/realvnc-server-aarch64-manjaro/releases/download/realvnc-server-aarch64-v6.10.1/realvnc-vnc-server-6.10.1-1-aarch64.pkg.tar.zst
sudo pacman -U realvnc-vnc-server-6.10.1-1-aarch64.pkg.tar.zst --noconfirm

echo :::::::
echo Starting Services
sudo systemctl enable --now vncserver-x11-serviced
sudo systemctl start vncserver-x11-serviced

# Licensing Issues?  Run: sudo /usr/bin/vnclicense -add
echo Job Done!!
read
