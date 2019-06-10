#!/bin/sh

# This script and its functions configures zsh

for file in ~/dots/scripts/*.sh; do # assumes dots repo is child of home directory
  # shellcheck disable=SC1090
  source "$file"
done

run_on_entry() {
  #customize_shell
  load_oh_my_zsh
  #load_brew
  #clean_docker
  #set_up_chruby
}

run_on_exit() {
  #clear_shell_history
}

run_on_entry
trap 'run_on_exit' EXIT
