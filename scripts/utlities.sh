#!/bin/sh

# These miscellaneous utility functions support configuring the environment

# This function creates a symlink between the current user's configuration files and this
# project's configuration files
# example usage: sym_link .tmux.conf /Users/zli/dots/
sym_link() {
  file=$1
  project_path=$2
  ln -sf "$project_path"/"$file" ~/"$file"
}
