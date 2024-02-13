#!/usr/bin/env sh

# Sync brews, casks and taps
# Update everything

brew update
brew upgrade

brew bundle install --cleanup --file=packages.brew

echo "Brew packages synced and up-to-date."
