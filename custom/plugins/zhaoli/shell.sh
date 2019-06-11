#!/bin/sh

# This script and its functions supports the shell.

# This function customizes the shell
# example usage: customize_shell
customize_shell() {
  if [ -n "$BASH_VERSION" ]; then
    about 'customize shell environment'
    group 'zhaoli'
  fi

  set_history_to_be_unique
}

# This function cleans up the shell history so it is not persisted
# this way credentials typed into the shell history are not persisted
# after the terminal session ends
# useful for SSH credentials or getting credentials from Bitwarden
# example usage: clear_shell_history
clear_shell_history() {
  if [ -n "$BASH_VERSION" ]; then
    about 'clear out shell history to avoid logging sensitive credentials'
    group 'zhaoli'
  fi

  history -c # clear history
  history -w # write im history from memory to file
}

# This function sets the shell history to duplicate
# this makes it easier to scroll through history and get only unique commands
# example usage: set_history_to_be_unique
set_history_to_be_unique() {
  if [ -n "$BASH_VERSION" ]; then
    about 'allow scrolling through unique previous commands with ↑ key'
    group 'zhaoli'
  fi

  HISTCONTROL=ignoredups:ignorespace # duplicate commands will not be saved
}
