#!/bin/sh

# These functions support configuring bash

# This function configures bash
# example usage: set_up_bash /Users/zli/dots/
set_up_bash() {
  about 'sets up bash'
  group 'zhaoli'

  project_path=$1
  sym_link .bashrc "$project_path"
  sym_link .inputrc "$project_path"
}

# This function installs bash-it
# example usage: install_bash_it
install_bash_it() {
  about 'installs bash-it'
  group 'zhaoli'

  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  ~/.bash_it/install.sh --no-modify-config
}
