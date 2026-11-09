#!/bin/sh

# This script and its functions configures bash

run_on_entry() {
  if [ -d "$HOME/.bash_it" ] && [ -f "$HOME/dots/custom/bash-it.sh" ]; then
    # shellcheck disable=SC1090
    . "$HOME/dots/custom/bash-it.sh"
  fi
  customize_shell
  clean_docker
  if _macos; then
    load_brew
  fi
}

run_on_exit() {
  clear_shell_history
}

run_on_entry
trap 'run_on_exit' EXIT
