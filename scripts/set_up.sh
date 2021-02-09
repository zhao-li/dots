#!/bin/sh

# This script sets up the applications
# example usage: $ scripts/set_up.sh /Users/zhaoli/dots/

project_path=$1

for file in "$project_path"/custom/plugins/zhaoli/*.sh; do
  # shellcheck disable=SC1090
  . "$file"
done
for file in "$project_path"/custom/plugins/zhaoli/*.bash; do
  # shellcheck disable=SC1090
  . "$file"
done

set_up_bash "$project_path"
set_up_zsh "$project_path"
set_up_git "$project_path"
set_up_vim "$project_path"
set_up_tmux "$project_path"
set_up_hyper "$project_path"
set_up_vscode "$project_path"

if _macos; then
  echo "doing mac stuff"
  _sym_link .bash_profile "$project_path"
elif _linux; then
  echo "doing ubuntu stuff"
elif _windows; then
  echo "doing microsoft stuff"
fi

