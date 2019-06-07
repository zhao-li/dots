#!/bin/bash

# These functions support configuring bash

# This function configures base
# example usage: set_up_bash /Users/zli/dots/
function set_up_bash() {
  project_path=$1
  sym_link .bashrc "$project_path"
  sym_link .inputrc "$project_path"
}

# This function installs bash-it
# example usage: install_bash_it
function install_bash_it() {
  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  ~/.bash_it/install.sh --no-modify-config
}

# This function loads base-it
# example usage: load_bash_it
function load_bash_it() {
  echo "loading bash it"
  if [ -d "~/.bash_it" ] && [ -f "~/dots/custom/bash-it.bash" ]; then
    source ~/dots/custom/bash-it.bash
  fi
  set_prompt
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
  if [ -d "~/.bash_it" ] && [ -f "~/dots/custom/bash-it.bash" ]; then
    PS1+='$(__git_ps1 "(%s)")' 
  fi
  PS1+="$white$ "
}
