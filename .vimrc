set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'scrooloose/nerdtree'
Plugin 'isRuslan/vim-es6'

call vundle#end()
filetype plugin indent on

set t_Co=256
set t_ut=
colorscheme codedark

inoremap jj <ESC>
nmap <C-n> :NERDTreeToggle<CR>
let mapleader=" "

filetype plugin indent on
syntax on
set encoding=utf-8
set clipboard=unnamedplus

