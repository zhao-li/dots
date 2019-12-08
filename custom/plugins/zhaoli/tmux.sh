#!/bin/sh

# These functions support tmux

# This function configures tmux
# example usage: set_up_tmux /Users/zhaoli/dots/
set_up_tmux() {
  if _bash_it_running; then
    about 'configures tmux'
    group 'zhaoli'
  fi

  project_path=$1
  _sym_link .tmux.conf "$project_path"
}
