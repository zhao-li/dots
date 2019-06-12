#!/bin/sh

# This script and its functions supports the ruby environment.

# Set up chruby
# Example usage: set_up_chruby
set_up_chruby() {
  if _bash_it_running; then
    about 'set up chruby'
    group 'zhaoli'
  fi

  brew_prefix=$(brew --prefix)
  chruby_path=$brew_prefix/opt/chruby/

  if [ -d "$chruby_path" ]; then
    # shellcheck disable=SC1090
    . "$chruby_path"/share/chruby/chruby.sh
    # shellcheck disable=SC1090
    . "$chruby_path"/share/chruby/auto.sh
  fi
}
