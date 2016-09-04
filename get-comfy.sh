#!/bin/bash

# clone our junk
git clone https://github.com/tspigot/vim-config ~/.vim
pushd ~/.vim
git submodule init
git submodule update
popd
git clone https://github.com/tspigot/tmux-config ~/.tmux
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf

# set up base16
git clone https://github.com/chriskempson/base16-shell ~/.config/base16-shell
cat - >>~/.bashrc <<'HERE'
BASE16_SHELL=$HOME/.config/base16-shell
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
HERE

echo "Please remember to install vim-gnome for clipboard support and to"
echo "source your .bashrc."
