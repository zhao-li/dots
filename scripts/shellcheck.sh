#!/bin/bash

# This script and its functions supports shellcheck.

# Example usage:
# lint_project
function lint_project {
  shellcheck -- .bashrc .bash_profile *.sh scripts/*.sh scripts/tasks/*.sh
}
