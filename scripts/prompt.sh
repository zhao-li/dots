#!/bin/sh

# These functions support configuring the prompt

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
  if [ -d "$HOME/.bash_it" ] && [ -f "$HOME/dots/custom/bash-it.sh" ]; then
    PS1+='$(__git_ps1 "(%s)")' 
  fi
  PS1+="$white$"
}
