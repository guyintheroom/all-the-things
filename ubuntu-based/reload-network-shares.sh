#!/bin/bash
echo Reload Network Shares

echo :::::::
echo Force Unmount
sudo umount -a -t cifs -l

echo :::::::
echo Reload Shares from fstabs
sudo mount -a

echo :::::::
echo Job Done!!
