#!/bin/bash

# Install basics for new a new ubuntu environment, with the idea that configuration for these should already be present in other dotfiles

sudo apt update
sudo apt upgrade
# install and switch from bash to zsh
sudo apt install zsh
chsh -s $(which zsh)

# install hack nerd font (remember to enable manually in terminal profile)
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
./nerd-fonts/install.sh Hack

# install oh-my-zsh framework for some nice plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
mv .zshrc.pre-oh-my-zsh .zshrc # restore original .zshrc

# download and setup power level 10k oh-my-zsh theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/nice-zsh-stuff/powerlevel10k # clone p10k repo

# download fish-like zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/nice-zsh-stuff/zsh-syntax-highlighting

# install ripgrep (used by telescope nvim plugin)
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb

# download neovim appimage
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage /usr/local/bin/nvim

# install nvm for node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# install rbenv and ruby, to be able to install ruby gems
sudo apt install rbenv
rbenv init
rbenv install 3.0.2
rbenv global 3.0.2

# install pyenv
curl https://pyenv.run | bash

# install colorls cmd make pretty
gem install colorls

# clone rupa/z cmd utility
git clone https://github.com/rupa/z.git
