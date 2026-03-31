#!/bin/bash
set -euo pipefail

## Install packages
pkg update && pkg upgrade

pkg_list=(
  wget
  zip
  unzip
  curl
  git
  zsh
  nvim
  bat
  exa
  starship
  atuin
  zoxide
  fzf
  tmux
)

pkg install -y "${pkg_list[@]}"

## Configure font
mkdir -p "${HOME}/.termux/fonts"
cp "assets/HackNerdFontMono-Regular.ttf" "${HOME}/.termux/font.ttf"

# Configure color scheme
cp "assets/colors.properties" "${HOME}/.termux"

## Configure shell
curl -fsSL git.io/antigen > "${HOME}/.local/bin/antigen.zsh"
cp "assets/.zshrc" "${HOME}"

#TODO: configure nvim and tmux

## Reload Termux settings
termux-reload-settings
