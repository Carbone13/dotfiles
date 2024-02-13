#!/usr/bin/env sh

# Install the most basic tools

# Homebrew
command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew"; \
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; }
brew analytics off

(echo; echo 'eval "\$(${HOMEBREW_PREFIX}/bin/brew shellenv)"') >> ${shell_rcfile}
eval "\$(${HOMEBREW_PREFIX}/bin/brew shellenv)"

echo "Prelude done."
