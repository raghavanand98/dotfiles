

set path+=**
set wildmenu
set nocompatible
:set wildignore+=**/temp/**
:set wildignore+=*/.git/*

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end() 

set ruler showcmd
set expandtab
set shiftwidth=2
set softtabstop=2
filetype indent plugin on
syntax on 
set rnu

set clipboard=unnamed
set autoindent
set colorcolumn=80
set backspace=2
let &winheight = &lines *  9/10
let g:jsx_ext_required = 0
let g:airline#extensions#tabline#enabled = 1
let g:UltiSnipsExpandTrigger="å"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:NERDTreeWinSize = 20
"au BufNewFile,BufRead *.ejs set filetype=html
nnoremap <C-a> :NERDTreeToggle<CR>
""autocmd FileType javascript.jsx UltiSnipsAddFiletypes html

set laststatus=2
let mapleader = ';'
imap <silent> <C-c> </<C-X><C-O><C-X>
inoremap <silent> <C-x> </<C-X><C-O><Esc>bba
inoremap <silent> <C-c> </<C-X><C-O><Esc>bba<Enter><Enter><Esc>ka<Tab>
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ( )<ESC>i  <ESC>i<BS>
inoremap [ [ ]<ESC>i  <ESC>i<BS>
inoremap { { }<ESC>i  <ESC>i<BS>
inoremap ) ()
inoremap ] []
inoremap } {}
inoremap <C-l> <ESC>/)\\|]\\|}\\|'\\|"<ENTER>a
inoremap <C-a> <ESC>?(\\|[\\|{\\|'\\|"<ENTER>i

nnoremap <leader>S :source ~/.vimrc<ENTER>
nnoremap <leader>o :only<ENTER>:w\|%bd\|e#<ENTER><ENTER>
nnoremap <leader><leader> <ESC>:w<ENTER>
nnoremap <leader>q :wq<ENTER>
nnoremap <leader>w :set wrap!<ENTER>
nnoremap <leader>L :NERDTree<ENTER>
nnoremap <leader>l :let NERDTreeWinSize=

"FUZZY FILE SEARCH
"
"
nnoremap <leader>f :find 
nnoremap <leader>F :find *
nnoremap <leader>a :b 
nnoremap <leader>A :b *

"Copy paste commands
nnoremap <leader>d "ad
nnoremap <leader>D "aD
nnoremap <leader>y "sy
nnoremap <leader>Y "sY
nnoremap <leader>p "sp
nnoremap <leader>P "sP

"Move lines up and down
let @j = '"qdd"qp'
let @k = '"qddk"qP'
nnoremap <leader>k @k
nnoremap <leader>j @j

"Ctags
"Ctrl-T --> Jump back up the tag stack
"Ctrl] --> Search for tag
"g+Ctrl] --> Ambiguous search 
command! MakeTags !ctags -R .


"Snippets
":-1read $HOME/.vim/PATH_TO_SNIPPER

"build integration plugin
"helpgrep
":cn, :cp go forward and back in quickfix
colorscheme solarized
set bg=dark

let g:solarized_termcolors=256

