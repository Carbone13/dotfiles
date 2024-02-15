#!/usr/bin/env sh

echo "Updating OS..."

sh $HOME/dotfiles/scripts/brewer.sh
sh $HOME/dotfiles/scripts/dotfiles.sh

echo "Done !"
