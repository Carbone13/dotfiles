#!/usr/bin/env sh

# Sync brews, casks and taps
# Update everything

brew update
brew upgrade

brew bundle install --file=packages.brew
brew bundle cleanup --force --zap --file=packages.brew
brew cu

echo "Brew packages synced and up-to-date."
