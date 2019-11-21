#!/bin/bash

# This script and its functions supports the installing a development environment.
# run script without sudo: ./install.sh

project_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    
for file in "$project_path"/custom/plugins/zhaoli/*.sh; do
  # shellcheck disable=SC1090
  . "$file"
done

set_up_tmux "$project_path"
set_up_hyper "$project_path"
set_up_vim "$project_path"
set_up_bash "$project_path"
install_bash_it
install_oh_my_zsh
set_up_zsh "$project_path"
set_up_vscode "$project_path"

if _macos; then
  echo "doing mac stuff"
  install_brew
  install_brew_packages
  install_vscode_extensions
  _sym_link .bash_profile "$project_path"
elif _linux; then
  echo "doing ubuntu stuff"
  sudo apt-get update && apt-get install -y \
    git \
    gitk \
    gitg \
    tmux \
    vim \
    vim-gnome
elif _windows; then
  echo "doing microsoft stuff"
fi

echo "run these manually to complete set up:"
echo "set_up_bash_it"
