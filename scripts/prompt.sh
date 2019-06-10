#!/bin/sh

# These functions support configuring the prompt

# This function sets the prompt
# example usage: set_prompt
set_prompt() {
  if [ -d "$HOME/.bash_it" ] && [ -f "$HOME/dots/custom/bash-it.sh" ]; then
    set_bash_it_prompt
  else
    set_basic_prompt
  fi
}

set_basic_prompt() {
  white="\[\e[00m\]"
  green="\[\e[01;32m\]"
  blue="\[\e[01;34m\]"
  cyan="\[\e[1;36m\]"
  user="\u"
  working_directory="\w"

  PS1=""
  PS1="$PS1💩$blue$user$green$working_directory$cyan"
  PS1="$PS1"'$(__git_ps1 "(%s)")' 
  PS1="$PS1$white$ "
}

set_bash_it_prompt() {
  user="${cyan}\u"
  working_directory="${green}\w"

  export SCM_THEME_PROMPT_DIRTY="💩"
  export SCM_THEME_PROMPT_CLEAN="🦄"
  export SCM_THEME_PROMPT_PREFIX="${purple:?}("
  export SCM_THEME_PROMPT_SUFFIX=")"
  export SCM_GIT_SHOW_DETAILS=false
  export SCM_GIT_SHOW_STASH_INFO=false

  PS1=""
  PS1="$PS1$user$working_directory"
  PS1="$PS1$(scm_prompt_info)"
  PS1="$PS1${reset_color:?}$ "
}

# This configures the oh-my-zsh prompt
# https://github.com/robbyrussell/oh-my-zsh/blob/master/custom/themes/example.zsh-theme
# some prompt settings 
set_oh_my_zsh_prompt() {
  local user="%F{cyan}%n"
  local dir="%F{green}%~%f"
  local git='$(git_prompt_info)'

  prompt_string="$FG[237]------------------------------------------------------------%{$reset_color%}\n"
  prompt_string+="${user}${dir}${git}$ "
  echo $prompt_string
}
