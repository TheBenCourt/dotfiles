execute pathogen#infect()
set nocompatible
set encoding=utf-8
set fileencoding=utf-8

filetype plugin on
syntax enable
set showmatch
set t_Co=256

filetype plugin indent on
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set shiftround
set nowrap
set autoindent
set backspace=indent,eol,start

set number relativenumber

set backupdir=~/.vim/backups
set backupdir=~/.vim/swaps
set backupdir=~/.vim/undo

set hlsearch
set ignorecase
set incsearch
set smartcase

set laststatus=2
set lazyredraw

set noerrorbells
set visualbell

set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.min.css,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/vendor/*,*/.git/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/dist/*
