#!/bin/sh

# These functions support configuring bash

# This function configures base
# example usage: set_up_bash /Users/zli/dots/
function set_up_bash() {
  project_path=$1
  sym_link .bashrc "$project_path"
  sym_link .inputrc "$project_path"
}

# This function loads base-it
# example usage: load_bash_it
function load_bash_it() {
  if [ -f ~/dots/custom/bash-it.bash ]; then
    source ~/dots/custom/bash-it.bash
  fi
}
