#!/bin/bash

### Updating System
sudo pacman -Syu --noconfirm

echo "Finished System Update"

### YAY Install
cd
mkdir -p Downloads/Git
cd Downloads/Git

git clone https://aur.archlinux.org/yay.git
sudo chown -R paranoia-agent:users ./yay
cd yay
makepkg -si --noconfirm

echo "Finished YAY Install"

### Pacman Packages
sudo pacman -S bspwm sxhkd playerctl rofi dunst xorg sddm xfce4-power-manager xfce4-settings firefox kitty thunar thunar-archive-plugin gvfs-mtp udevil ranger w3m ffmpegthumbnailer tumbler flameshot starship python-pywal feh zathura zathura-pdf-poppler neofetch pulseaudio pulseaudio-alsa pavucontrol polkit-gnome lxappearance-gtk3 mousepad neovim htop wget iwd wireless_tools wpa_supplicant xdg-utils xdg-user-dirs xf86-input-wacom noto-fonts noto-fonts-cjk --noconfirm

echo "Finished Installing Pacman Packages"

### AUR Packages
yay -S picom-jonaburg-git polybar zscroll-git rofi-dmenu networkmanager-dmenu-git i3lock-color xidlehook themix-full-git bibata-cursor-theme nerd-fonts-hack nerd-fonts-jetbrains-mono --noconfirm

echo "Finished Installing AUR Packages"

sudo pacman -Rns i3 --noconfirm

cd
sudo chmod +x .config/polybar/player.sh
sudo chmod +x .config/i3lock/lockscreen
sudo chmod +x .config/bspwm/bspwmrc

sudo systemctl enable sddm

echo "Finished Setup"
