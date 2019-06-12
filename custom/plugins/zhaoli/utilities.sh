#!/bin/sh

# These miscellaneous utility functions support configuring the environment

# This function creates a symlink between the current user's configuration files and this
# project's configuration files
# example usage: _sym_link .tmux.conf /Users/zli/dots/
_sym_link() {
  if _bash_it_running; then
    about 'a convenience method for symlinking configuration files'
    group 'zhaoli'
  fi

  file=$1
  project_path=$2
  ln -sf "$project_path"/"$file" ~/"$file"
}

# This function checks if bash-it is running
# example usage:
# if _bash_it_running; then
#   echo "do bash-it stuff"
# fi
_bash_it_running() {
  true=0
  false=1
  if [ -n "$ZSH_VERSION" ]; then
      running=$false
  elif [ -n "$BASH_VERSION" ]; then
    if [ -n "$(type -t bash-it)" ]; then
      running=$true
    else
      running=$false
    fi
  fi
  return $running
}
