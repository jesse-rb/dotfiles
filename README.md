# Dotfiles

## setup steps

**get files locally**

Assuming we are in our user's home directory
```
cd ~
```

1. cloning repo
```
git clone --bare https://github.com/jesse-rb/dotfiles.git ~/.dotfiles
```

2. for now, set alias to checkout repo, this line is also present in `.zshrc` for later
```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

3. checkout main branch
```
git checkout
```

At this point all dotfiles should already be in place :D, no need to `mv` or `cp` things around (hopefully?)

**install basics**

4. run install script corresponding to your os, e.g. if on ubuntu then run 
```
run bash ~/scripts/ubuntu-install.sh
```

**complete neovim setup**

5. open neovim, then inside neovim, run the :PackerInstall command to isntall neovim plugins
```
nvim
:PackerInstall
```
