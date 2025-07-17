#!/bin/sh

# These functions support configuring Hyper

# This function configures Hyper
# example usage: set_up_hyper /Users/zhaoli/dots/
set_up_hyper() {
  if _bash_it_running; then
    about 'configures Hyper'
    group 'zhaoli'
  fi

  project_path=$1
  _sym_link .hyper.js "$project_path"
}
