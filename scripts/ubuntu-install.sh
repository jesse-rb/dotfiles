#!/bin/bash

# Install basics for new a new ubuntu environment, with the idea that configuration for these should already be present in other dotfiles

sudo apt update
sudo apt upgrade
# install and switch from bash to zsh
sudo apt install zsh
chsh -s $(which zsh)

# install oh-my-zsh framework for some nice plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# install and setup power level 10k oh-my-zsh theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k # clone p10k repo

# install nvm for node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# install rbenv and ruby, to be able to install ruby gems
sudo apt install rbenv

# install colorls cmd make pretty

# install z cmd utility
