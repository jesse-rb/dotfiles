#!/bin/bash

# Install basics for new a new macos environment, with the idea that configuration for these should already be present in other dotfiles

# install xcode command line tools
xcode-select --install

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew update

# install oh-my-zsh framework for some nice plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

mv .zshrc.pre-oh-my-zsh .zshrc # restore original .zshrc

# download and setup power level 10k oh-my-zsh theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/nice-zsh-stuff/powerlevel10k # clone p10k repo

# download fish-like zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/nice-zsh-stuff/zsh-syntax-highlighting

# install neovim appimage
brew install neovim

# install nvm for node
brew install nvm
mkdir ~/.nvm

# install rbenv and ruby, to be able to install ruby gems
brew install rbenv
rbenv init
rbenv install 3.1.3
rbenv global 3.1.3

# install pyenv
brew install pyenv

# install colorls ruby gem
gem install colorls

# install rupa/z cmd utility
brew install z
