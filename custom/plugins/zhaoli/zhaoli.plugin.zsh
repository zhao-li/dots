#!/bin/sh

# This script loads the custom oh-my-zsh plugin

for file in $ZSH_CUSTOM/plugins/zhaoli/*.sh; do
  source "$file"
done
