#!/bin/sh

# This script and its functions supports the shell.

# This function customizes the shell
# example usage: customize_shell
customize_shell() {
  about 'customize shell environment'
  group 'zhaoli'

  set_history_to_be_unique
}

# This function cleans up the shell history so it is not persisted
# this way credentials typed into the shell history are not persisted
# after the terminal session ends
# useful for SSH credentials or getting credentials from Bitwarden
# example usage: clear_shell_history
clear_shell_history() {
  about 'clear out shell history to avoid logging sensitive credentials'
  group 'zhaoli'

  history -c # clear history
  history -w # write im history from memory to file
}

# This function sets the shell history to duplicate
# this makes it easier to scroll through history and get only unique commands
# example usage: set_history_to_be_unique
set_history_to_be_unique() {
  about 'allow scrolling through unique previous commands with ↑ key'
  group 'zhaoli'

  HISTCONTROL=ignoredups:ignorespace # duplicate commands will not be saved
}
