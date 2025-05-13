#!/bin/bash

# Install Oh My ZSH
bash $HOME/.rcs/scripts/install_omz.sh

# Set up aliases
bash $HOME/.rcs/scripts/ln.sh

# Set up Vim
bash $HOME/.rcs/scripts/vim_setup.sh

# Set up NVM

bash $HOME/.rcs/scripts/install_nvm.sh

# Install Powerlevel10k Theme
bash $HOME/.rcs/scripts/install_powerlevel10k_theme.sh

# Install Homebrew packages
bash $HOME/.rcs/scripts/install_homebrew_packages.sh

# Install Window Manager
# NOTE: This needs to run AFTER the Homebrew install.
bash $HOME/.rcs/scripts/install_window_manager.sh