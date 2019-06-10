#!/bin/sh

# These functions support configuring tmux

# This function configures tmux
# example usage: set_up_tmux /Users/zli/dots/
set_up_tmux() {
  project_path=$1
  sym_link .tmux.conf "$project_path"
}
