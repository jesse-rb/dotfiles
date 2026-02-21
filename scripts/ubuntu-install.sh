#!/bin/bash

# Install basics for new a new ubuntu environment, with the idea that configuration for these should already be present in other dotfiles

sudo apt update
sudo apt upgrade
# install and switch from bash to zsh
sudo apt install zsh
chsh -s $(which zsh)

# install hack nerd font (remember to enable manually in terminal profile)
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLO https://github.com/ryanoasis/nerd-fonts/blob/v3.0.2/patched-fonts/Hack/Regular/HackNerdFont-Regular.ttf
cd ~

# install oh-my-zsh framework for some nice plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
mv .zshrc.pre-oh-my-zsh .zshrc # restore original .zshrc

# download and setup power level 10k oh-my-zsh theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/nice-zsh-stuff/powerlevel10k # clone p10k repo

# download fish-like zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/nice-zsh-stuff/zsh-syntax-highlighting

# download neovim deps and neovim appimage
# install ripgrep (used by telescope nvim plugin)
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb
sudo apt install libfuse2

# install neovim app image
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage /usr/local/bin/nvim

# install nvm for node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# install ruby deps and rbenv
sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv

# install pyenv
curl https://pyenv.run | bash

# install go
curl -fLO https://go.dev/dl/go1.20.6.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.20.6.linux-amd64.tar.gz

source .zshrc

# install ruby so that we can install ruby gems below
rbenv install 3.2.2
rbenv global 3.2.2

# install colorls cmd make pretty
gem install colorls

# install tmux
sudo apt install tmux
