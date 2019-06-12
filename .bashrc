#!/bin/sh

# This script and its functions configures bash

run_on_entry() {
  if [ -d "$HOME/.bash_it" ] && [ -f "$HOME/dots/custom/bash-it.sh" ]; then
    # shellcheck disable=SC1090
    . "$HOME/dots/custom/bash-it.sh"
  fi
  customize_shell
  load_brew
  clean_docker
  set_up_chruby
}

run_on_exit() {
  clear_shell_history
}

run_on_entry
trap 'run_on_exit' EXIT
