#!/bin/bash

# This script installs VS Code extensions

# Install VSCode extensions
# Example usage: load_brew
function install_vscode_extensions() {
  about 'install VSCode extensions'
  group 'zhaoli'

  code \
    --install-extension ms-vsliveshare.vsliveshare \
    --install-extension vscodevim.vim
}
