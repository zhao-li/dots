#!/bin/sh

# This script and its functions supports the installing a development environment.
# run script without sudo: ./bootstrap.sh

project_path=$(cd "$(dirname "$0")" || exit; pwd -P)
    
for file in "$project_path"/custom/plugins/zhaoli/*.sh; do
  # shellcheck disable=SC1090
  . "$file"
done

install_bash_it
install_oh_my_zsh
"$project_path"/scripts/set_up.sh "$project_path"

if _macos; then
  echo "doing mac stuff"
  install_brew
  install_brew_packages
  install_vscode_extensions
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
