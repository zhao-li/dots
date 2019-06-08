#!/bin/sh

# These functions support configuring the prompt

# This function sets the prompt
# example usage: set_prompt
function set_prompt {
  if [ -d "$HOME/.bash_it" ] && [ -f "$HOME/dots/custom/bash-it.sh" ]; then
    set_bash_it_prompt
  else
    set_basic_prompt
  fi
}

function set_basic_prompt() {
  white="\[\e[00m\]"
  green="\[\e[01;32m\]"
  blue="\[\e[01;34m\]"
  cyan="\[\e[1;36m\]"
  user="\u"
  working_directory="\w"

  PS1="💩$blue$user$green$working_directory$cyan"
  PS1+='$(__git_ps1 "(%s)")' 
  PS1+="$white$ "
}

function set_bash_it_prompt() {
  user="${purple}\u"
  working_directory="${green}\w"

  SCM_THEME_PROMPT_DIRTY="💩"
  SCM_THEME_PROMPT_CLEAN="🦄"
  SCM_THEME_PROMPT_PREFIX="${cyan}("
  SCM_THEME_PROMPT_SUFFIX=")"
  SCM_GIT_SHOW_DETAILS=false

  PS1="$user$working_directory"
  PS1+="$(scm_prompt_info)"
  PS1+="${reset_color}$ "
}
