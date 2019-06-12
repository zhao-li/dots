#!/bin/sh

# This script installs VS Code extensions

# Install VSCode extensions
# Example usage: load_brew
install_vscode_extensions() {
  if _bash_it_running; then
    about 'install VSCode extensions'
    group 'zhaoli'
  fi

  code \
    --install-extension ms-vsliveshare.vsliveshare \
    --install-extension vscodevim.vim
}
