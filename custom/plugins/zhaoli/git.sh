#!/bin/sh

# These functions support git

# This function configures VS Code
# example usage: set_up_git /Users/zhaoli/dots/
set_up_git() {
  if _bash_it_running; then
    about 'configures Git'
    group 'zhaoli'
  fi

  project_path=$1
  _sym_link .gitconfig "$project_path"
}
