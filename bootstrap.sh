#!/bin/sh

# This script and its functions supports the installing a development environment.
# run script without sudo: ./install.sh

function sym_link() {
  file=$1
  path=$2
  ln -sf "$path"/"$file" ~/"$file"
}

path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    
for file in "$path"/scripts/*.sh; do
  # shellcheck disable=SC1090
  source "$file"
done

sym_link .tmux.conf "$path"
sym_link .vimrc "$path"
mkdir -p ~/.vim/swp/ ~/.vim/backup/
sym_link .bashrc "$path"
sym_link .inputrc "$path"

if [ "$(uname)" == "Darwin" ]; then
  echo "doing mac stuff"
  install_brew_packages
  install_vscode_extensions
  sym_link .bash_profile "$path"
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
