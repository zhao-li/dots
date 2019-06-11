#!/bin/sh

# This script installs VS Code extensions

# Install VSCode extensions
# Example usage: load_brew
function install_vscode_extensions() {
  if [ -n "$BASH_VERSION" ]; then
    about 'install VSCode extensions'
    group 'zhaoli'
  fi

  code \
    --install-extension ms-vsliveshare.vsliveshare \
    --install-extension vscodevim.vim
}
