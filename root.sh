#!/bin/bash

# Change Debian to SID Branch
cp /etc/apt/sources.list /etc/apt/sources.list.bak
cp sources.list /etc/apt/sources.list


username=$(id -u -n 1000)
builddir=$(pwd)

# Update packages list
apt update

#dpkg -i 'Custom Packages/rofi_1.7.0-1_amd64.deb'
apt install unzip sddm kitty thunar neofetch git xorg lxappearance flameshot sxhkd lxpolkit -y
apt install ttf-mscorefonts-installer rofi picom libqt5svg5 qml-module-qtquick-controls -y

mkdir -p /home/$username/.config
cp .Xresources /home/$username
cp -R dotfiles/* /home/$username/.config/
chown -R $username:$username /home/$username
