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
    config_dir="$HOME/Library/Application Support/Code/User/"
    mkdir -p "$config_dir"
    ln \
      -sf \
      "$project_path"/"$file" \
      "$config_dir"/"$file"
    echo "done"
  elif _linux; then
    config_dir="$HOME/.config/Code/User/"
    mkdir -p "$config_dir"
    ln \
      -sf \
      "$project_path"/"$file" \
      "$config_dir"/"$file"
  elif _windows; then
    echo "should be %APPDATA%/Code/User/$file"
  fi
}

# Install VSCode extensions
# Example usage: install_vscode_exteions
install_vscode_extensions() {
  if _bash_it_running; then
    about 'install VSCode extensions'
    group 'zhaoli'
  fi

  code \
    --install-extension donjayamanne.githistory \
    --install-extension grapecity.gc-excelviewer \
    --install-extension mhutchie.git-graph \
    --install-extension ms-vsliveshare.vsliveshare \
    --install-extension vscodevim.vim
}

