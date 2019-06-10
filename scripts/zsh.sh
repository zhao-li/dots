#!/bin/sh

# These functions support configuring bash

# This function configures zsh
# example usage: set_up_zsh /Users/zli/dots/
set_up_zsh() {
  project_path=$1
  sym_link .zshrc "$project_path"
}
