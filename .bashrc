#!/bin/bash

# This script and its functions configures bash

for file in ~/dots/scripts/*.sh; do # assumes dots repo is child of home directory
  # shellcheck disable=SC1090
  source "$file"
done

function run_on_entry {
  customize_shell
  load_bash_it
  load_brew
  clean_docker
  set_up_chruby
}

function run_on_exit {
  clear_shell_history
}

run_on_entry
trap 'run_on_exit' EXIT
