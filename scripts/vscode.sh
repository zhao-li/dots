#!/bin/bash

# This script installs VS Code extensions

function install_vscode_extensions() {
  code \
    --install-extension ms-vsliveshare.vsliveshare \
    --install-extension vscodevim.vim
}
