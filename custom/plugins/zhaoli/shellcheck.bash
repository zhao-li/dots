#!/bin/bash

# This script and its functions supports shellcheck.

# Lints the project for community known errors
# Example usage: lint_project
lint_project() {
  if _bash_it_running; then
    about 'lint dots project for community known errors'
    group 'zhaoli'
  fi
  
  findings_found=0

  files=$(
    find \
      . \
      -type f \
      -regex ".*\(\.sh\|\.bash.*\|\.zsh.*\)" \
      -not -path "**/zsh-*" \
  )

  for file in $files; do
    if ! shellcheck "$file"; then
      findings_found=1
    fi
  done

  return $findings_found
}

