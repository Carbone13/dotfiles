#!/usr/bin/env sh

echo "Hello, world !"

sh ./scripts/prelude.sh
sh ./scripts/system.sh
sh ./scripts/brewer.sh
sh ./scripts/dotfiles.sh
sh ./scripts/aftermath.sh