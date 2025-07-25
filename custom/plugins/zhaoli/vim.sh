#!/bin/sh

# These functions support configuring Vim

# This function configures Vim
# example usage: set_up_vim /Users/zhaoli/dots/
set_up_vim() {
  if _bash_it_running; then
    about 'set up Vim'
    group 'zhaoli'
  fi

  project_path=$1
  _sym_link .vimrc "$project_path"
  mkdir -p ~/.vim/swp/ ~/.vim/backup/
}
