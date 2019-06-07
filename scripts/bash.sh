#!/bin/sh

# These functions support configuring bash

# This function configures base
# example usage: set_up_bash /Users/zli/dots/
function set_up_bash() {
  project_path=$1
  sym_link .bashrc "$project_path"
  sym_link .inputrc "$project_path"
}

# This function installs bash-it
# example usage: install_bash_it
function install_bash_it() {
  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  ~/.bash_it/install.sh --no-modify-config
}

# This function loads base-it
# example usage: load_bash_it
function load_bash_it() {
  if [ -d "$HOME/.bash_it" ] && [ -f "$HOME/dots/custom/bash-it.sh" ]; then
    BASH_IT_CUSTOM="$HOME/dots/custom/"
    source ~/dots/custom/bash-it.sh
  fi
  set_prompt
}
