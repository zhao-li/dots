#!/bin/sh

# This configures the custom oh-my-zsh theme
# deferring to scripts/prompt.sh to handle setting the prompt
# https://github.com/robbyrussell/oh-my-zsh/blob/master/custom/themes/example.zsh-theme

color='%F{magenta}'
ZSH_THEME_GIT_PROMPT_PREFIX='('
ZSH_THEME_GIT_PROMPT_SUFFIX=')'
ZSH_THEME_GIT_PROMPT_BRANCH=''
ZSH_THEME_GIT_PROMPT_AHEAD='↑'
ZSH_THEME_GIT_PROMPT_BEHIND='↓'

if [[ $TERM_PROGRAM == 'Hyper' ]]; then
  ZSH_THEME_GIT_PROMPT_DIRTY='%{%G💩%}'
  ZSH_THEME_GIT_PROMPT_CLEAN='%{%G🦄%}'
else
  ZSH_THEME_GIT_PROMPT_DIRTY='💩'
  ZSH_THEME_GIT_PROMPT_CLEAN='🦄'
fi

user="%F{cyan}%n"
dir="%F{green}%~%f"

# based off of: https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/git-prompt/git-prompt.plugin.zsh
git_info() {
  if [ -n "$__CURRENT_GIT_STATUS" ]; then
    STATUS="$ZSH_THEME_GIT_PROMPT_PREFIX$ZSH_THEME_GIT_PROMPT_BRANCH$GIT_BRANCH"
    if [ "$GIT_BEHIND" -ne "0" ]; then
        STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_BEHIND"
    fi
    if [ "$GIT_AHEAD" -ne "0" ]; then
        STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_AHEAD"
    fi
    if [ "$GIT_CHANGED" -ne "0" ] || [ "$GIT_UNTRACKED" -ne "0" ]; then
        STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_DIRTY"
    fi
    if [ "$GIT_CHANGED" -eq "0" ] && [ "$GIT_CONFLICTS" -eq "0" ] && [ "$GIT_STAGED" -eq "0" ] && [ "$GIT_UNTRACKED" -eq "0" ]; then
        STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_CLEAN"
    fi
    STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_SUFFIX"
    echo "$color$STATUS"
  fi
}

PROMPT=$'$FG[237]-------------------------------------------------------------------------------%{$reset_color%}\n'
PROMPT+="${user}"
PROMPT+="${dir}"
# this function needs to be called later and should not be expanded
# shellcheck disable=SC2016
PROMPT+='$(git_info)'
# shellcheck disable=SC2154 # reset_color is provided by zsh
PROMPT+="%{${reset_color}%}$ "

export RPROMPT=''
