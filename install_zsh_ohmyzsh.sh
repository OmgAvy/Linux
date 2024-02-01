#!/bin/bash
#------------------------------#
#        ___                   #
#       /   |_   ____  __      #
#      / /| | | / / / / /      #
#     / ___ | |/ / /_/ /       #
#    /_/  |_|___/\__, /        #
#               /____/         #
#------------------------------#

# Install Zsh
sudo apt-get update
sudo apt-get install -y zsh

echo "Changing the default shell to Zsh"
sudo chsh -s $(which zsh) $USER

echo "Installing OhMyZsh"
rm -rf ~/.oh-my-zsh/
echo "removed OhMyZsh"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "downlloaeded OhMyZsh"

# Source the Zsh configuration to apply changes
source ~/.zshrc

echo "Zsh and Oh My Zsh have been successfully installed."
