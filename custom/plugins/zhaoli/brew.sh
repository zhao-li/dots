#!/bin/sh

# This script and its functions supports brew.

# Load brew
# Example usage: load_brew
load_brew() {
  if [ -n "$BASH_VERSION" ]; then
    about 'load brew'
    group 'zhaoli'
  fi

  if [ -f "$(brew --prefix)"/etc/bash_completion ]; then
    # shellcheck disable=SC1090
    . "$(brew --prefix)"/etc/bash_completion
  fi
  export PATH="/usr/local/bin:$PATH"
}

# Install brew packages
# Example usage: install_brew_packages
install_brew_packages() {
  if [ -n "$BASH_VERSION" ]; then
    about 'install brew packages'
    group 'zhaoli'
  fi

  xcode-select --install
  update_brew
  brew bundle
}

# Update brew and its packages
# Example usage: update_brew
update_brew() {
  if [ -n "$BASH_VERSION" ]; then
    about 'update brew and its packages'
    group 'zhaoli'
  fi

  brew update
  brew upgrade
  brew cask upgrade
  mas upgrade
  brew doctor
}
