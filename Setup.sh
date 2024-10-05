#!/bin/bash

sudo apt install nala -y

alias dapt='apt'
alias apt='nala'
alias sudo='sudo '

# Single Command Installations

sudo apt update -y
sudo apt upgrade -y
sudo apt fetch
sudo apt install zsh -y
sudo apt install wget -y
sudo apt install git -y
sudo apt install terminator -y

# ZSH Setup

clear

echo "Setting up zsh..."

command -v zsh | sudo tee -a /etc/shells

sudo chsh -s $(which zsh) $USER

sudo apt update -y

echo "Setting Up ohmyszh..."

clear

sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Set the $ZSH_CUSTOM variable (for Oh My Zsh custom plugins)
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

python3 zshrc_edit.py

source ~/.zshrc

clear

#VSCodium Install

echo "Installing VS Codium..."

wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
    
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
    
sudo apt update && sudo apt install codium

xargs -n1 codium --install-extension < extensions.txt

for file in *.vsix; do codium --install-extension "$file"; done

# Terminator Setup

# Copy the config file from the current directory
cp config ~/.config/terminator/

# Create the directory if it doesn't exist and move the file
mkdir -p ~/.config/terminator
cp config ~/.config/terminator/


sudo apt autoremove -y

echo "Setup Completed"



