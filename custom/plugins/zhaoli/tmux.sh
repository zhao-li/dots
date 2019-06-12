#!/bin/sh

# These functions support configuring tmux

# This function configures tmux
# example usage: set_up_tmux /Users/zli/dots/
set_up_tmux() {
  if [ -n "$BASH_VERSION" ]; then
    about 'configures tmux'
    group 'zhaoli'
  fi

  project_path=$1
  _sym_link .tmux.conf "$project_path"
}