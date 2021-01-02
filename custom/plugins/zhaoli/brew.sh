#!/bin/sh

# This script and its functions supports brew.

# install brew
# Example usage: load_brew
install_brew() {
  if _bash_it_running; then
    about 'install brew'
    group 'zhaoli'
  fi

  /bin/bash \
    -c \
    "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
}

# Load brew
# Example usage: load_brew
load_brew() {
  if _bash_it_running; then
    about 'load brew'
    group 'zhaoli'
  fi

  export PATH="/usr/local/bin:$PATH"
}

# Install brew packages
# Example usage: install_brew_packages
install_brew_packages() {
  if _bash_it_running; then
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
  if _bash_it_running; then
    about 'update brew and its packages'
    group 'zhaoli'
  fi

  brew update
  brew upgrade --greedy
  mas upgrade
  brew cleanup
  brew doctor
}
