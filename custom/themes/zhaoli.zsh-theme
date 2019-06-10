#!/bin/sh

# This configures the custom oh-my-zsh theme
# deferring to scripts/prompt.sh to handle setting the prompt
# https://github.com/robbyrussell/oh-my-zsh/blob/master/custom/themes/example.zsh-theme

ZSH_THEME_GIT_PROMPT_PREFIX="%F{magenta}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%f"
ZSH_THEME_GIT_PROMPT_DIRTY="💩"
ZSH_THEME_GIT_PROMPT_CLEAN="🦄"

PROMPT=$(set_oh_my_zsh_prompt)
