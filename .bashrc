# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

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
