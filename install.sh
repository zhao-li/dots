function sym_link() {
  file=$1
  path=$2
  ln -sf $path/$file ~/$file
}

#sudo apt-get update && apt-get install -y \
#  git \
#  gitk \
#  gitg \
#  tmux \
#  vim \
#  vim-gnome

path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sym_link .bashrc       $path
sym_link .bash_profile $path
sym_link .tmux.conf    $path
sym_link .vimrc        $path

