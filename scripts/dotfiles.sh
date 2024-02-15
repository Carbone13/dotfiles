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
ln -sf $CFG/zsh/.zshrc $HOME/.zshrc
ln -sf $CFG/hush/.hushlogin $HOME/.hushlogin
ln -sf $CFG/git/.gitconfig $HOME/.gitconfig
ln -sf $CFG/ubersicht/.simplebarrc $HOME/.simplebarrc

echo "Linked dotfiles."
