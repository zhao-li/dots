#!/bin/bash

# This script loads the custom oh-my-zsh plugin

for file in "$ZSH_CUSTOM"/plugins/zhaoli/*.{sh,bash}; do
  # shellcheck disable=SC1090 # these files will get checked by other means
  . "$file"
done

