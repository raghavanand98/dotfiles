

set path+=**
set wildmenu

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'bling/vim-airline'
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Valloric/YouCompleteMe' 
Plugin 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
call vundle#end() 

set ruler showcmd
set expandtab
set shiftwidth=2
set softtabstop=2
filetype indent plugin on
syntax on 
set rnu

set autoindent
set colorcolumn=80
set bg=dark
set backspace=2
let g:solarized_termcolors=256
colorscheme solarized
let &winheight = &lines *  9/10

let g:ycm_path_to_python_interpreter = '/usr/bin/python'

set clipboard=unnamed

let g:NERDTreeWinSize = 20
au BufNewFile,BufRead *.ejs set filetype=html
nnoremap <C-a> :NERDTreeToggle<CR>

set laststatus=2
let mapleader = ';'
imap <silent> <C-c> </<C-X><C-O><C-X>
inoremap '' ''<ESC>i
inoremap "" ""<ESC>i
inoremap (( ( )<ESC>i  <ESC>hi
inoremap [[ [ ]<ESC>i  <ESC>hi
inoremap {{ { }<ESC>i  <ESC>hi
inoremap <silent> <C-x> </<C-X><C-O><Esc>bba
inoremap <silent> <C-c> </<C-X><C-O><Esc>bba<Enter><Enter><Esc>ka<Tab>
inoremap '' ''<ESC>i
inoremap "" ""<ESC>i
inoremap (; ( )<ESC>i  <ESC>i<BS>
inoremap [; [ ]<ESC>i  <ESC>i<BS>
inoremap {; { }<ESC>i  <ESC>i<BS>
nnoremap <leader>o :only<ENTER>
nnoremap <leader><leader> <ESC>:w<ENTER>
nnoremap <leader>q :wq<ENTER>
nnoremap <leader>w :set wrap!<ENTER>
set nocompatible

nnoremap <leader>f :find\ 
nnoremap <leader>b :b\


