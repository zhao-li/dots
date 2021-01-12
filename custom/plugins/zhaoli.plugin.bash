#!/bin/bash

# This script loads the custom bash-it plugin

cite about-plugin
about-plugin "Helper functions for Zhao Li's typical workflow"

for file in "$BASH_IT_CUSTOM"/plugins/zhaoli/*.{sh,bash}; do
  # shellcheck disable=SC1090 # these files will get checked by other means
  . "$file"
done

