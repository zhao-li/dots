#!/bin/bash

# This script and its functions supports the ruby environment.

function setup_chruby {
  brew_prefix=$(brew --prefix)
  chruby_path=$brew_prefix/opt/chruby/

  if [ -d "$chruby_path" ]; then
    # shellcheck disable=SC1090,SC1091
    source "$chruby_path"/share/chruby/chruby.sh
    # shellcheck disable=SC1090,SC1091
    source "$chruby_path"/share/chruby/auto.sh
  fi
}
