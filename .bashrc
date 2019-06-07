#!/bin/bash

# This script and its functions configures bash

if [ -f ~/dots/custom/bash-it.bash ]; then
  source ~/dots/custom/bash-it.bash
fi

for file in ~/dots/scripts/*.sh; do # assumes dots repo is child of home directory
  # shellcheck disable=SC1090
  source "$file"
done

function run_on_entry {
  setup_shell_history
  setup_brew
  setup_shell_prompt
  clean_docker
  setup_chruby
}

function run_on_exit {
  cleanup_shell_history
}

run_on_entry
trap 'run_on_exit' EXIT
