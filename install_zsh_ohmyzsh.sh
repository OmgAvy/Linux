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
# To Work zsh-auto-notify
sudo apt-get install -y libnotify-bin

# Create directory for saving history commands
ZSH_CACHE_DIR=~/.cache/zsh
ZSH_HISTORY_FILE=$ZSH_CACHE_DIR/history

# Check if ~/.cache/zsh directory exists, if not, create it
if [ ! -d "$ZSH_CACHE_DIR" ]; then
    mkdir -p "$ZSH_CACHE_DIR"
fi
# Check if ~/.cache/zsh/history file exists, if not, create it
if [ ! -f "$ZSH_HISTORY_FILE" ]; then
    touch "$ZSH_HISTORY_FILE"
fi
echo "Zsh cache and history file have been set up."

echo "Changing the default shell to Zsh"
sudo chsh -s $(which zsh) $USER
exec zsh 

echo "Installing OhMyZsh"
rm -rf ~/.oh-my-zsh/
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add the plugins to the Zsh configuration file
# plugins=(
#   git
#   npm
#   sudo
#   history
#   zsh-autosuggestions
#   zsh-syntax-highlighting
#   history-substring-search
#   zsh-you-should-use
#   auto-notify
#   zsh-autocomplete
# )

# echo "plugins=(${plugins[@]})" >> ~/.zshrc

# Source the Zsh configuration to apply changes
source ~/.zshrc

echo "Zsh and Oh My Zsh have been successfully installed."
