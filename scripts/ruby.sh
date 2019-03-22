#!/bin/bash

# This script and its functions supports the ruby environment.

function setup_chruby {
  if [ -d "$(brew --prefix)/opt/chruby/" ]; then
    # shellcheck disable=SC1091
    source /usr/local/opt/chruby/share/chruby/chruby.sh
    # shellcheck disable=SC1091
    source /usr/local/opt/chruby/share/chruby/auto.sh
  fi
}
