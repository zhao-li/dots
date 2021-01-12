#!/bin/sh

# This script and its functions supports shellcheck.

# Lints the project for community known errors
# Example usage: lint_project
lint_project() {
  if _bash_it_running; then
    about 'lint dots project for community known errors'
    group 'zhaoli'
  fi

  shellcheck -- \
    *.sh \
    .bash*
  for file in **/*.sh; do
    shellcheck "$file"
  done
}

