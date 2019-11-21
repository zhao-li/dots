#!/bin/sh

# This script installs VS Code extensions

# This function configures VS Code
# example usage: set_up_vscode /Users/zhaoli/dots/
set_up_vscode() {
  if _bash_it_running; then
    about 'configures VS Code'
    group 'zhaoli'
  fi

  project_path=$1
  file=settings.json
  ln \
    -sf \
    "$project_path"/"$file" \
    ~/Library/Application\ Support/Code/User/"$file"
}

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
