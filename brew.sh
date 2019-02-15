#!/bin/bash

# This script and its functions supports brew.

function setup_brew {
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
  export PATH="/usr/local/bin:$PATH"
}
