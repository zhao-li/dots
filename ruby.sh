#!/bin/bash

# This script and its functions supports the ruby environment.

function setup_chruby {
  if [ -d "$(brew --prefix)/opt/chruby/" ]; then
    source /usr/local/opt/chruby/share/chruby/chruby.sh
    source /usr/local/opt/chruby/share/chruby/auto.sh
  fi
}
