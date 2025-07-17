#!/bin/sh

# These functions support configuring Zsh

# This function configures Zsh
# example usage: set_up_zsh /Users/zhaoli/dots/
set_up_zsh() {
  if _bash_it_running; then
    about 'set up Zsh'
    group 'zhaoli'
  fi

  project_path=$1
  _sym_link .zshrc "$project_path"
}

# This function installs Oh My Zsh
# example usage: install_oh_my_zsh
install_oh_my_zsh() {
  if _bash_it_running; then
    about 'install Oh My Zsh'
    group 'zhaoli'
  fi

  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh) --unattended"
}

# This function configures zsh-autosuggestion
# example usage: configures_autosuggestion
configure_autosuggestion() {
  if _bash_it_running; then
    about 'set up '
    group 'zhaoli'
  fi

  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=65" # ensures zsh-autosuggestion text show up when using solarized theme
  # 65 is equivalent to solarized theme's base1 content tone
}
