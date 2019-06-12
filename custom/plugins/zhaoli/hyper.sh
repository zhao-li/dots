#!/bin/sh

# These functions support configuring hyper

# This function configures hyper
# example usage: set_up_hyper /Users/zli/dots/
set_up_hyper() {
  if _bash_it_running; then
    about 'configures hyper'
    group 'zhaoli'
  fi

  project_path=$1
  _sym_link .hyper.js "$project_path"
}
