#!/usr/bin/env sh

# Update and symlink the dotfiles

CFG=.config

# clean
rm -rf $HOME/$CFG
rm -f $HOME/.zshrc
rm -f $HOME/.gitconfig
rm -f $HOME/.hushlogin
rm -f $HOME/.simplebarrc

# link
mkdir -p $HOME/$CFG
stow --dir=$CFG --target=$HOME/$CFG .
stow --dir=$CFG/zsh --target=$HOME .
stow --dir=$CFG/hush --target=$HOME .
stow --dir=$CFG/git --target=$HOME .
stow --dir=$CFG/ubersicht --target=$HOME .

echo "Linked dotfiles."
