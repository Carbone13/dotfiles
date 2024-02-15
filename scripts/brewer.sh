#!/usr/bin/env sh

# Sync brews, casks and taps
# Update everything

brew update

brew bundle install --file=$HOME/dotfiles/packages.brew
brew bundle cleanup --zap --force --file=$HOME/dotfiles/packages.brew

brew upgrade

echo "Brew packages synced and up-to-date."
