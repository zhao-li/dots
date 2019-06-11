#!/bin/sh

# These functions support configuring the prompt

# This configures the regular shell prompt
# Example usage: set_basic_prompt
set_basic_prompt() {
  about 'set a basic shell prompt'
  group 'zhaoli'

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

# This configures the bash-it prompt
# Example usage: set_bash_it_prompt
set_bash_it_prompt() {
  about 'set a bash-it dependent prompt'
  group 'zhaoli'

  dim="\[\e[38;5;237m\]"
  user="${cyan}\u"
  working_directory="${green}\w"

  export SCM_THEME_PROMPT_DIRTY="💩"
  export SCM_THEME_PROMPT_CLEAN="🦄"
  export SCM_THEME_PROMPT_PREFIX="${purple:?}("
  export SCM_THEME_PROMPT_SUFFIX=")"
  export SCM_GIT_SHOW_DETAILS=false
  export SCM_GIT_SHOW_STASH_INFO=false

  PS1=${dim}$'--------------------------------------------------------------------------------\n'
  PS1="$PS1$user$working_directory"
  PS1="$PS1$(scm_prompt_info)"
  PS1="$PS1${reset_color:?}$ "
}
