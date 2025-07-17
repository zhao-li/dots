#!/bin/sh

# These functions support SSH

# This function configures SSH
# example usage: set_up_ssh /Users/zhaoli/dots/
set_up_ssh() {
  if _bash_it_running; then
    about 'configures SSH'
    group 'zhaoli'
  fi

  project_path=$1
  ln -sf "$project_path"/ssh.config ~/.ssh/config # not using _sym_link
  # convenience method because the SSH config file needs to be renamed
}
