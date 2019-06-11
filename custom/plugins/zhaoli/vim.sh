#!/bin/sh

# These functions support configuring vim

# This function configures vim
# example usage: set_up_vim /Users/zli/dots/
set_up_vim() {
  about 'set up vim'
  group 'zhaoli'

  project_path=$1
  _sym_link .vimrc "$project_path"
  mkdir -p ~/.vim/swp/ ~/.vim/backup/
}
