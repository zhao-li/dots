#!/bin/sh

# These functions support configuring bash

# This function configures base
# example usage: set_up_bash /Users/zli/dots/
function set_up_bash() {
  project_path=$1
  sym_link .bashrc "$project_path"
  sym_link .inputrc "$project_path"
}
