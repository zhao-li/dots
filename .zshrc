#!/bin/sh

# This script and its functions configures zsh

run_on_entry() {
  if [ -d "$HOME/.oh-my-zsh" ] && [ -f "$HOME/dots/custom/oh-my-zsh.bash" ]; then
    export ZSH_CUSTOM="$HOME/dots/custom/"
    export ZSH_DISABLE_COMPFIX=true
    # shellcheck disable=SC1090 # this file will be checked by other means
    . ~/dots/custom/oh-my-zsh.bash
  fi
  clean_docker
  configure_autosuggestion
  load_brew
}

run_on_exit() {
  clear_shell_history
}

run_on_entry
trap 'run_on_exit' EXIT
