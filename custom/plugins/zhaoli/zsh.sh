#!/bin/sh

# These functions support configuring bash

# This function configures zsh
# example usage: set_up_zsh /Users/zli/dots/
set_up_zsh() {
  if [ -n "$BASH_VERSION" ]; then
    about 'set up zsh'
    group 'zhaoli'
  fi

  project_path=$1
  _sym_link .zshrc "$project_path"
}

# This function installs oh-my-zsh
# example usage: install_oh_my_zsh
install_oh_my_zsh() {
  if [ -n "$BASH_VERSION" ]; then
    about 'install oh-my-zsh'
    group 'zhaoli'
  fi

  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh) --unattended"
}
