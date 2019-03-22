#!/bin/bash

# This script and its functions supports brew.

function setup_brew {
  if [ -f "$(brew --prefix)"/etc/bash_completion ]; then
    # shellcheck disable=SC1090
    . "$(brew --prefix)"/etc/bash_completion
  fi
  export PATH="/usr/local/bin:$PATH"
}

function install_brew_packages() {
  update_brew
  brew bundle
}

function update_brew() {
  brew update
  brew upgrade
  brew cask upgrade
}
