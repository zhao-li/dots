# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

unset color_prompt force_color_prompt

for file in scripts/*.sh; do
  source $file
done

function run_on_entry {
  setup_brew
  setup_prompt
  clean_docker
  setup_chruby
}

function run_on_exit {
  cleanup_history
}

run_on_entry
trap 'run_on_exit' EXIT
