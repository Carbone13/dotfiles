#!/usr/bin/env sh

# Update and symlink the dotfiles

CFG=$HOME/dotfiles/.config

# clean
rm -rf $HOME/.config
rm -f $HOME/.zshrc
rm -f $HOME/.gitconfig
rm -f $HOME/.hushlogin
rm -f $HOME/.simplebarrc

# link
mkdir -p $HOME/.config
stow --dir=$CFG --target=$HOME/.config .
stow --dir=$CFG/zsh --target=$HOME .
stow --dir=$CFG/hush --target=$HOME .
stow --dir=$CFG/git --target=$HOME .
stow --dir=$CFG/ubersicht --target=$HOME .

echo "Linked dotfiles."
