#!/bin/sh

# These functions support VS Code

# This function configures VS Code
# example usage: set_up_vscode /Users/zhaoli/dots/
set_up_vscode() {
  if _bash_it_running; then
    about 'configures VS Code'
    group 'zhaoli'
  fi

  project_path=$1
  file=settings.json
  if _macos; then
    path="$HOME/Library/Application\ Support/Code/User/"
    mkdir -p "$path"
    ln \
      -sf \
      "$project_path"/"$file" \
      "$path"/"$file"
  elif _linux; then
    path="$HOME/.config/Code/User/"
    mkdir -p "$path"
    ln \
      -sf \
      "$project_path"/"$file" \
      "$path"/"$file"
  elif _windows; then
    echo "should be %APPDATA%/Code/User/$file"
  fi
}

# Install VSCode extensions
# Example usage: load_brew
install_vscode_extensions() {
  if _bash_it_running; then
    about 'install VSCode extensions'
    group 'zhaoli'
  fi

  code \
    --install-extension donjayamanne.githistory \
    --install-extension eamodio.gitlens \
    --install-extension karigari.chat \
    --install-extension ms-vsliveshare.vsliveshare \
    --install-extension ms-vsliveshare.vsliveshare-audio \
    --install-extension vscodevim.vim
}

