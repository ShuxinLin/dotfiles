# dotfiles

1. debian download

firmware-testing-amd64-netinst.iso https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/weekly-builds/amd64/iso-cd/

2. root 

```
sudo su

cp /etc/apt/sources.list /etc/apt/sources.list.bak
cp sources.list /etc/apt/sources.list

username=$(id -u -n 1000)

# Update packages list
apt update
apt install unzip sddm kitty thunar neofetch git xorg lxappearance flameshot sxhkd lxpolkit -y
apt install ttf-mscorefonts-installer rofi picom libqt5svg5 qml-module-qtquick-controls -y

```

