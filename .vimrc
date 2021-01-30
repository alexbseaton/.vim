set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'isRuslan/vim-es6'
Plugin 'dag/vim-fish'
Plugin 'jremmen/vim-ripgrep'
Plugin 'vim-utils/vim-man'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
" Haskell things
Plugin 'eagletmt/neco-ghc'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'Shougo/vimproc.vim'
" Elm things
Plugin 'elmcast/elm-vim'
call vundle#end()

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

let g:python_host_prog = '/home/alex/.local/share/virtualenvs/vim2-FImGJ8U1/bin/python'
let g:python3_host_prog = '/home/alex/.local/share/virtualenvs/vim3-8Lfd5VFn/bin/python'

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

let g:ycm_semantic_triggers = {'haskell' : ['.'], 'elm' : ['.']}
let g:necoghc_enable_detailed_browse=1

" ELM
let g:elm_jump_to_error = 0
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_syntastic_show_warnings = 0
let g:elm_browser_command = ""
let g:elm_detailed_complete = 0
let g:elm_format_autosave = 1
let g:elm_format_fail_silently = 0
let g:elm_setup_keybindings = 1

" Use neco-ghc for Haskell
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
nnoremap <silent> <leader>gr :YcmCompleter GoToReferences<CR>

