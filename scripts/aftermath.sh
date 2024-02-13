#!/usr/bin/env sh

# Setups apps

# opam
opam init
# yabai
echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) $(which yabai) --load-sa" | sudo tee /private/etc/sudoers.d/yabai
yabai --start-service
# skhd
skhd --start-service