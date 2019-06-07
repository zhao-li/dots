#!/bin/sh

# This script and its functions supports brew.

function load_brew {
  if [ -f "$(brew --prefix)"/etc/bash_completion ]; then
    # shellcheck disable=SC1090
    . "$(brew --prefix)"/etc/bash_completion
  fi
  export PATH="/usr/local/bin:$PATH"
}

function install_brew_packages() {
  xcode-select --install
  update_brew
  brew bundle
}

function update_brew() {
  brew update
  brew upgrade
  brew cask upgrade
  mas upgrade
  brew doctor
}
