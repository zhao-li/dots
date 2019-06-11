#!/bin/sh

# This script and its functions configures zsh

for file in ~/dots/scripts/*.sh; do # assumes dots repo is child of home directory
  # shellcheck disable=SC1090
  source "$file"
done

run_on_entry() {
  if [ -d "$HOME/.oh-my-zsh" ] && [ -f "$HOME/dots/custom/oh-my-zsh.sh" ]; then
    export ZSH_CUSTOM="$HOME/dots/custom/"
    . ~/dots/custom/oh-my-zsh.sh
  fi
  #customize_shell
  #load_brew
  #clean_docker
  #set_up_chruby
}

run_on_exit() {
  #clear_shell_history
}

run_on_entry
trap 'run_on_exit' EXIT
