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
