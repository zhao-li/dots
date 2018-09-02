# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# auto-complete
source /etc/bash_completion

source ~/dots/functions.sh
source ~/dots/docker.sh
source ~/dots/packer.sh

setup_prompt

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
