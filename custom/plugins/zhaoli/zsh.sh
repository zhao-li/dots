#!/bin/sh

# These functions support configuring bash

# This function configures zsh
# example usage: set_up_zsh /Users/zli/dots/
set_up_zsh() {
  project_path=$1
  sym_link .zshrc "$project_path"
}

# This function installs oh-my-zsh
# example usage: install_oh_my_zsh
install_oh_my_zsh() {
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh) --unattended"
}

# This function loads oh-my-zsh
# example usage: load_oh_my_zsh
load_oh_my_zsh() {
  if [ -d "$HOME/.oh-my-zsh" ] && [ -f "$HOME/dots/custom/oh-my-zsh.sh" ]; then
    export ZSH_CUSTOM="$HOME/dots/custom/"
    . ~/dots/custom/oh-my-zsh.sh
  fi
}
