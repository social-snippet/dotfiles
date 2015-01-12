source ~/.vim.d/neobundle.vim
source ~/.vim.d/neocomplete.vim
source ~/.vim.d/keymap.vim
source ~/.vim.d/social_snippet.vim

function! s:init_options()
  syntax off

  set backspace=2
  set tabstop=2
  set shiftwidth=2
  set nowrap
  set smarttab
  set expandtab

  set mouse=a
  set ttymouse=sgr
  set clipboard=unnamed,unnamedplus

  set number
  set relativenumber
  set hlsearch

  set autoindent
  set nosmartindent
  set indentexpr=
  set indentkeys=
endfunction

au BufNewFile,BufRead * call s:init_options()
