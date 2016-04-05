#!/bin/bash

# run script with sudo bash install.sh

function sym_link() {
  file=$1
  path=$2
  ln -sf $path/$file ~/$file
}

#sudo apt-get update && apt-get install -y \
#  git \
#  gitk \
#  gitg \
#  tmux \
#  vim \
#  vim-gnome

path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sym_link .tmux.conf $path
sym_link .vimrc $path

if [ "$(uname)" == "Darwin" ]; then
  echo "doing mac stuff"
  sym_link .bash_profile $path
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "doing ubuntu stuff"
  sym_link .bashrc $path
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
  echo "doing microsoft stuff"
fi

