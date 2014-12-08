source ~/.vim.d/neobundle.vim
source ~/.vim.d/neocomplete.vim
source ~/.vim.d/keymap.vim

syntax off

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

au BufNewFile,BufRead * set autoindent
au BufNewFile,BufRead * set nosmartindent
au BufNewFile,BufRead * set indentexpr=
au BufNewFile,BufRead * set indentkeys=
