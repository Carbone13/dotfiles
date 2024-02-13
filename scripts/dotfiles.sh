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
ln -s $CFG/zsh/.zshrc $HOME/.zshrc
ln -s $CFG/hush/.hushlogin $HOME/.hushlogin
ln -s $CFG/git/.gitconfig $HOME/.gitconfig
ln -s $CFG/ubersicht/.simplebarrc $HOME/.simplebarrc

echo "Linked dotfiles."
