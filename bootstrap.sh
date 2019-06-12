#!/bin/bash

# This script and its functions supports the installing a development environment.
# run script without sudo: ./install.sh

project_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    
for file in "$project_path"/custom/plugins/zhaoli/*.sh; do
  # shellcheck disable=SC1090
  . "$file"
done

set_up_tmux "$project_path"
set_up_vim "$project_path"
set_up_bash "$project_path"
install_bash_it
install_oh_my_zsh
set_up_zsh "$project_path"

if [ "$(uname)" == "Darwin" ]; then
  echo "doing mac stuff"
  install_brew_packages
  install_vscode_extensions
  _sym_link .bash_profile "$project_path"
elif [ "$(substr "$(uname -s)" 1 5)" == "Linux" ]; then
  echo "doing ubuntu stuff"
  sudo apt-get update && apt-get install -y \
    git \
    gitk \
    gitg \
    tmux \
    vim \
    vim-gnome
elif [ "$(substr "$(uname -s)" 1 10)" == "MINGW32_NT" ]; then
  echo "doing microsoft stuff"
fi
