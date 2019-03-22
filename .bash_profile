#!/bin/bash

# This script is needed to direct MacOS terminals to use .bashrc
# https://apple.stackexchange.com/questions/51036/what-is-the-difference-between-bash-profile-and-bashrc/271472#271472

if [ -f ~/.bashrc ]; then
  # shellcheck disable=SC1090
  source ~/.bashrc
fi
