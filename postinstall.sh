#!/usr/bin/env bash

sudo pacman -S --needed base-devel 
git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si && cd $HOME
paru -S github-desktop pamac-aur atuin nautilus firefox xfce-polkit telegram-desktop ntfs-3g bluez bluez-utils blueman  waybar wofi hyprland hyrplock hyprpaper hypridle ttf-space-mono-nerd ttf-jetbrains-mono neovim python-pynvim npm nwg-look texlive qt6ct kvantum zsh foot xdg-user-dirs neofetch htop brightnessctl kate pamixer mako  qt6-5compat qt6-declarative qt6-svg sddm qt5-quickcontrols qt5-quickcontrols2 qt5-graphicaleffects gnome-keyring gtk-engine-murrine sassc gnome-themes-extra gwenview 
systemctl enable bluetooth.service



