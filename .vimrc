set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'jremmen/vim-ripgrep'
Plugin 'vim-utils/vim-man'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()

" line cursor in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set t_Co=256
set t_ut=
colorscheme codedark

filetype plugin indent on
syntax on
set encoding=utf-8
set clipboard=unnamedplus

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set number

set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey

inoremap jj <ESC>
nmap <C-n> :NERDTreeToggle<CR>
let mapleader=" "

if executable('rg')
  let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:netrw_browse_split=2
let g:netrw_winsize=25

let g:ctrlp_use_caching=0
let g:ctrlp_regexp=1

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

