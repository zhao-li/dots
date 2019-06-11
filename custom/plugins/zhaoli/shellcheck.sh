#!/bin/sh

# This script and its functions supports shellcheck.

# Lints the project for community known errors
# Example usage: lint_project
function lint_project {
  if [ -n "$BASH_VERSION" ]; then
    about 'lint dots project for community known errors'
    group 'zhaoli'
  fi

  shellcheck -- .bashrc .bash_profile *.sh scripts/*.sh scripts/tasks/*.sh
}
