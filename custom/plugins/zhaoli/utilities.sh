#!/bin/sh

# These miscellaneous utility functions support configuring the environment

# This function creates a symlink between the current user's configuration files and this
# project's configuration files
# example usage: _sym_link .tmux.conf /Users/zli/dots/
_sym_link() {
  if [ -n "$BASH_VERSION" ]; then
    about 'a convenience method for symlinking configuration files'
    group 'zhaoli'
  fi

  file=$1
  project_path=$2
  ln -sf "$project_path"/"$file" ~/"$file"
}
