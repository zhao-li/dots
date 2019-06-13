#!/bin/sh

# This configures the custom oh-my-zsh theme
# deferring to scripts/prompt.sh to handle setting the prompt
# https://github.com/robbyrussell/oh-my-zsh/blob/master/custom/themes/example.zsh-theme

color='%F{magenta}'
ZSH_THEME_GIT_PROMPT_PREFIX="$color("
ZSH_THEME_GIT_PROMPT_SUFFIX="$color)"
ZSH_THEME_GIT_PROMPT_BRANCH="$color"
ZSH_THEME_GIT_PROMPT_DIRTY='💩'
ZSH_THEME_GIT_PROMPT_CLEAN='🦄'
ZSH_THEME_GIT_PROMPT_AHEAD="$color↑"
ZSH_THEME_GIT_PROMPT_BEHIND="$color↓"

local user="%F{cyan}%n"
local dir="%F{green}%~%f"

# based off of: https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/git-prompt/git-prompt.plugin.zsh
git_info() {
  if [ -n "$__CURRENT_GIT_STATUS" ]; then
    STATUS="$ZSH_THEME_GIT_PROMPT_PREFIX$ZSH_THEME_GIT_PROMPT_BRANCH$GIT_BRANCH%{${reset_color}%}"
    if [ "$GIT_BEHIND" -ne "0" ]; then
        STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_BEHIND%{${reset_color}%}"
    fi
    if [ "$GIT_AHEAD" -ne "0" ]; then
        STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_AHEAD%{${reset_color}%}"
    fi
    if [ "$GIT_CHANGED" -ne "0" ] || [ "$GIT_UNTRACKED" -ne "0" ]; then
        STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_DIRTY%{${reset_color}%}"
    fi
    if [ "$GIT_CHANGED" -eq "0" ] && [ "$GIT_CONFLICTS" -eq "0" ] && [ "$GIT_STAGED" -eq "0" ] && [ "$GIT_UNTRACKED" -eq "0" ]; then
        STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_CLEAN"
    fi
    STATUS="$STATUS%{${reset_color}%}$ZSH_THEME_GIT_PROMPT_SUFFIX"
    echo "$STATUS"
  fi
}

PROMPT=$'$FG[237]-------------------------------------------------------------------------------%{$reset_color%}\n'
PROMPT+="${user}"
PROMPT+="${dir}"
PROMPT+='%{$(git_info)%}'
PROMPT+='%{${reset_color}%}$ '

RPROMPT=''
