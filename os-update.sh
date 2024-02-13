#!/usr/bin/env sh

echo "Updating OS..."

sh ./scripts/brewer.sh
sh ./scripts/dotfiles.sh

echo "Done !"