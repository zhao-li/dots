#!/bin/sh

# This script and its functions supports the shell.

# This function customizes the shell
# example usage: customize_shell
function customize_shell {
  set_prompt
  set_history_to_be_unique
}

# This function sets the prompt
# example usage: set_prompt
function set_prompt {
  white="\[\e[00m\]"
  green="\[\e[01;32m\]"
  blue="\[\e[01;34m\]"
  cyan="\[\e[1;36m\]"
  user="\u"
  working_directory="\w"

  # could not find a way to fit on same line
  PS1="💩$blue$user$green$working_directory$cyan"
  PS1+='$(__git_ps1 "(%s)")' 
  PS1+="$white$ "
}


# This function cleans up the shell history so it is not persisted
# this way credentials typed into the shell history are not persisted
# after the terminal session ends
# useful for SSH credentials or getting credentials from Bitwarden
# example usage: clear_shell_history
function clear_shell_history {
  history -c # clear history
  history -w # write im history from memory to file
}

# This function sets the shell history to duplicate
# this makes it easier to scroll through history and get only unique commands
# example usage: set_history_to_be_unique
function set_history_to_be_unique {
  HISTCONTROL=ignoredups:ignorespace # duplicate commands will not be saved
}
