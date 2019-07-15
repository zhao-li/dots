#!/bin/sh

# These miscellaneous utility functions support configuring the environment

# This function creates a symlink between the current user's configuration files and this
# project's configuration files
# example usage: _sym_link .tmux.conf /Users/zhaoli/dots/
_sym_link() {
  if _bash_it_running; then
    about 'a convenience method for symlinking configuration files'
    group 'zhaoli'
  fi

  file=$1
  project_path=$2
  ln -sf "$project_path"/"$file" ~/"$file"
}

# This function checks if OS is Mac
# example usage:
# if _macos; then
#   echo "do mac stuff"
# fi
_macos() {
  true=0
  false=1
  running=$false
  if [ "$(uname)" = "Darwin" ]; then
    running=$true
  fi
  return $running
}

# This function checks if OS is Linux
# example usage:
# if _linux; then
#   echo "do linux stuff"
# fi
_linux() {
  true=0
  false=1
  running=$false
  if [ "$(substr "$(uname -s)" 1 5)" = "Linux" ]; then
    running=$true
  fi
  return $running
}

# This function checks if OS is Windows
# example usage:
# if _windows; then
#   echo "do windows stuff"
# fi
_windows() {
  true=0
  false=1
  running=$false
  if [ "$(substr "$(uname -s)" 1 10)" = "MINGW32_NT" ]; then
    running=$true
  fi
  return $running
}

# This function checks if bash is running
# example usage:
# if _bash_running; then
#   echo "do bash stuff"
# fi
_bash_running() {
  true=0
  false=1
  running=$false
  if [ -n "$BASH_VERSION" ]; then
    running=$true
  fi
  return $running
}

# This function checks if zsh is running
# example usage:
# if _zsh_running; then
#   echo "do zsh stuff"
# fi
_zsh_running() {
  true=0
  false=1
  running=$false
  if [ -n "$ZSH_VERSION" ]; then
    running=$true
  fi
  return $running
}

# This function checks if bash-it is running
# example usage:
# if _bash_it_running; then
#   echo "do bash-it stuff"
# fi
_bash_it_running() {
  true=0
  false=1
  running=$false
  if _bash_running; then
    if [ -n "$(type -t bash-it)" ]; then
      running=$true
    fi
  fi
  return $running
}

# This function checks if oh_my_zsh is running
# example usage:
# if _oh_my_zsh_running; then
#   echo "do oh-my-zsh stuff"
# fi
_oh_my_zsh_running() {
  true=0
  false=1
  running=$false
  if _zsh_running; then
    if [ -n "$(whence upgrade_oh_my_zsh)" ]; then
      running=$true
    fi
  fi
  return $running
}

# This function updates everything in the environment
# example usage: update
update() {
  if _bash_it_running; then
    bash-it update
  fi
  if _zsh_running; then
    upgrade_oh_my_zsh
  fi
  if _macos; then
    update_brew
  fi
}
