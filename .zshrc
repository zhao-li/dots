#!/bin/sh

# This script and its functions configures zsh

run_on_entry() {
  if [ -d "$HOME/.oh-my-zsh" ] && [ -f "$HOME/dots/custom/oh-my-zsh.bash" ]; then
    export ZSH_CUSTOM="$HOME/dots/custom/"
    export ZSH_DISABLE_COMPFIX=true
    . ~/dots/custom/oh-my-zsh.bash
  fi
  clean_docker
  configure_autosuggestion
}

run_on_exit() {
  clear_shell_history
}

run_on_entry
trap 'run_on_exit' EXIT
