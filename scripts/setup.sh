#!/bin/bash

# Install Oh My ZSH
bash $HOME/.rcs/scripts/install_omz.sh
echo

# Set up aliases
bash $HOME/.rcs/scripts/ln.sh
echo

# Set up Vim
bash $HOME/.rcs/scripts/vim_setup.sh
echo

# Set up NVM

bash $HOME/.rcs/scripts/install_nvm.sh
echo

# Install Powerlevel10k Theme
bash $HOME/.rcs/scripts/install_powerlevel10k_theme.sh
echo

# Install Homebrew packages
bash $HOME/.rcs/scripts/install_homebrew_packages.sh
echo

# Install Window Manager
# NOTE: This needs to run AFTER the Homebrew install.
bash $HOME/.rcs/scripts/install_window_manager.sh
echo