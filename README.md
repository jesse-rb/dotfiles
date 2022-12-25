# Dotfiles

## start by
0. Assuming the current working directory is your user's home directorey
`cd ~`

1. cloning repo
`git clone --bare https://github.com/jesse-rb/dotfiles.git .dotfiles`

2. for now, set alias to checkout repo, this line is also present in `.zshrc` for later
`alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`

3. checkout main branch
`git checkout`

4. run install script corresponding to your os
e.g. if on ubuntu then run `bash ~/scripts/ubuntu-install.sh`
