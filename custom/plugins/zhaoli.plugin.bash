#!/bin/sh

# This script loads the custom bash-it plugin

cite about-plugin
about-plugin "Helper functions for Zhao Li's typical workflow"

files=$(find "$BASH_IT_CUSTOM"/plugins/zhaoli/ -type f )

for file in $files; do
  # shellcheck disable=SC1090 # these files will get checked by other means
  . "$file"
done

