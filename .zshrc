#!/bin/sh

# This script and its functions configures zsh

run_on_entry() {
  if [ -d "$HOME/.oh-my-zsh" ] && [ -f "$HOME/dots/custom/oh-my-zsh.sh" ]; then
    export ZSH_CUSTOM="$HOME/dots/custom/"
    . ~/dots/custom/oh-my-zsh.sh
  fi
  clean_docker
}

run_on_exit() {
  clear_shell_history
}

run_on_entry
trap 'run_on_exit' EXIT
