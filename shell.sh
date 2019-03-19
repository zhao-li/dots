#!/bin/bash

# This script and its functions supports the shell.

function setup_prompt {
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
