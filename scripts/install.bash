#!/bin/bash

function copy_dotfile() {
  local src=~/dotfiles/src/$1
  local dst=~/$1

  # put out existing file
  # e.g. ~/.vimrc -> ~/.vimrc.12345
  readlink ${dst} >/dev/null 2>&1
  if [[ $? -ne 0 ]]; then
    if [[ -e ${dst} ]]; then
      echo "move: ${dst} -> ${dst}.`date +"%s"`"
      mv ${dst} ${dst}.`date +"%s"`
    fi
  fi

  # create link
  [[ ! -e ${dst} ]] && ln -s ${src} ${dst} && echo "create: ${dst}"
}

DOTFILES=`cat << __END_DOTFILES__
.vimrc
.vim
.vim.d

.bashrc
.bash.d

.tmux.conf
.tmux.d
__END_DOTFILES__`

for dotfile in ${DOTFILES}; do
  copy_dotfile ${dotfile}
done

