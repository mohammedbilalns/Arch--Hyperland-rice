#!/usr/bin/env bash

sudo pacman -S --needed base-devel 
echo "installing paru..."
git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si && cd $HOME
echo "installing some packages from repo..."
paru -S atuin nautilus firefox telegram-desktop ntfs-3g bluez bluez-utils blueman  waybar wofi hyprland hyrplock hyprpaper hypridle ttf-space-mono-nerd ttf-jetbrains-mono neovim python-pynvim npm nwg-look texlive qt6ct kvantum zsh foot xdg-user-dirs neofetch htop brightnessctl kate pamixer mako  qt6-5compat qt6-declarative qt6-svg sddm qt5-quickcontrols qt5-quickcontrols2 qt5-graphicaleffects gnome-keyring gtk-engine-murrine sassc gnome-themes-extra gwenview tree-sitter-cli hyprlock hypridle papirus-icon-theme pipewire pipewire-jack pipewire-media-session pipewire-pulse pipewire-alsa  gnome-disk-utility qbittorrent zathura zathura-pdf-poppler 
echo "installing some packages from aur..."
paru -S github-desktop-bin pamac-aur xfce-polkit hyprshade rnote tlp tlp-rdw sddm-conf-git

systemctl enable bluetooth.service
systemctl enable tlp.service
echo "generating hyprland config ..."
git clone https://github.com/mohammedbilalns/Arch--Hyperland-rice.git
cp -r $HOME/Arch--Hyperland-rice/* $HOME/.config/
echo "creating sddm theme..."
sudo cp -r $HOME/Arch--Hyperland-rice/sddm/sugar-candy /usr/share/sddm/themes/





