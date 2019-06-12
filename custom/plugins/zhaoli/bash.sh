#!/bin/sh

# These functions support configuring bash

# This function configures bash
# example usage: set_up_bash /Users/zli/dots/
set_up_bash() {
  if [ -n "$BASH_VERSION" ]; then
    about 'sets up bash'
    group 'zhaoli'
  fi

  project_path=$1
  _sym_link .bashrc "$project_path"
  _sym_link .inputrc "$project_path"
}

# This function installs bash-it
# example usage: install_bash_it
install_bash_it() {
  if [ -n "$BASH_VERSION" ]; then
    about 'installs bash-it'
    group 'zhaoli'
  fi

  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  ~/.bash_it/install.sh --no-modify-config
}