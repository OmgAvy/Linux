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
sudo apt-get install libnotify-bin

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
chsh -s $(which zsh)

echo "Installing OhMyZsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

CUSTOM_ZSHRC_URL="https://raw.githubusercontent.com/OmgAvy/Linux/main/.zshrc"

echo "Downloading custom .zshrc file"
curl -fsSL "$CUSTOM_ZSHRC_URL" -o ~/.zshrc

echo "Installing additional plugins"
# zsh-autocomplete
git clone --depth 1 https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete || true
# zsh-you-should-use
git clone --depth 1 https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/zsh-you-should-use || true
# zsh-auto-notify
git clone --depth 1 https://github.com/MichaelAquilina/zsh-auto-notify.git $ZSH_CUSTOM/plugins/auto-notify || true
# zsh-autosuggestions
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions || true
# zsh-syntax-highlighting
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting || true
# history-substring-search
git clone --depth 1 https://github.com/zsh-users/zsh-history-substring-search.git $ZSH_CUSTOM/plugins/history-substring-search || true


echo "Downloading .aliases file"
curl "https://raw.githubusercontent.com/OmgAvy/Linux/main/.aliases" -o ~/.aliases

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
