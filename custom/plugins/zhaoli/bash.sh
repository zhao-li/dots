#!/bin/sh

# These functions support configuring bash

# This function configures bash
# example usage: set_up_bash /Users/zli/dots/
set_up_bash() {
  if _bash_it_running; then
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
  if _bash_it_running; then
    about 'installs bash-it'
    group 'zhaoli'
  fi

  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  ~/.bash_it/install.sh --no-modify-config
}

# This function sets up bash-it
# example usage: set_up_bash_it
set_up_bash_it() {
  if _bash_it_running; then
    about 'sets up bash-it'
    group 'zhaoli'
  fi

  bash-it enable completion git
}
