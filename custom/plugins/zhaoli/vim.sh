#!/bin/sh

# These functions support configuring vim

# This function configures vim
# example usage: set_up_vim /Users/zli/dots/
set_up_vim() {
  if _bash_it_running; then
    about 'set up vim'
    group 'zhaoli'
  fi

  project_path=$1
  _sym_link .vimrc "$project_path"
  mkdir -p ~/.vim/swp/ ~/.vim/backup/
}
