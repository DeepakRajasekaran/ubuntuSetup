#!/bin/bash

alias dapt='apt'
alias apt='nala'
alias sudo='sudo '

# Essentials
sudo apt install dirmngr ca-certificates software-properties-common apt-transport-https
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.4_all.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ./protonvpn-stable-release_1.0.4_all.deb && sudo apt update
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo add-apt-repository ppa:trebelnik-stefina/grub-customizer


sudo apt -f install
sudo apt install htop
sudo apt install grub-customizer -y
sudo apt install google-chrome-stable -y
sudo snap remove firefox
sudo apt install firefox-stable -y
sudo apt update -y
sudo apt install gnome-tweaks -y
sudo apt install qbittorrent -y
sudo apt install gnome-shell-extension-manager -y
sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret
sudo apt install chrome-gnome-shell -y
sudo snap install localsend
sudo apt install vlc -y
