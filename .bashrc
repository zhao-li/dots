# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# GIT branch in prompt
PS1='\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]${PWD/#$HOME/~}\[\033[00m\]$(__git_ps1 " (%s)") $ '

# auto-complete
source /etc/bash_completion

source ~/dots/functions.sh
