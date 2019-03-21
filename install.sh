#!/bin/bash

# This script and its functions supports the installing a development environment.
# run script without sudo: ./install.sh

function sym_link() {
  file=$1
  path=$2
  ln -sf $path/$file ~/$file
}

for file in scripts/*.sh; do
  source $file
done

path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sym_link .tmux.conf $path
sym_link .vimrc $path
mkdir -p ~/.vim/swp/
mkdir -p ~/.vim/backup/

if [ "$(uname)" == "Darwin" ]; then
  echo "doing mac stuff"
  brew update && brew upgrade && brew bundle
  apm install --packages-file atomfile
  install_vscode_extensions
  sym_link .bash_profile $path
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "doing ubuntu stuff"
  sudo apt-get update && apt-get install -y \
    git \
    gitk \
    gitg \
    tmux \
    vim \
    vim-gnome
  sym_link .bashrc $path
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
  echo "doing microsoft stuff"
fi

