

set nocompatible
set path+=**
set wildmenu
set wildignore+=**/temp/**
set wildignore+=**/.git/**
set wildignore+=**/node_modules/**

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



colorscheme solarized
set background=dark
let g:solarized_termcolors=256

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
autocmd FileType javascript.jsx UltiSnipsAddFiletypes html

set laststatus=2
let mapleader = ';'
imap <silent> <C-c> </<C-X><C-O><C-X>
inoremap <silent> <C-x> </<C-X><C-O><Esc>bba
inoremap <silent> <C-c> </<C-X><C-O><Esc>bba<Enter><Enter><Esc>ka<Tab>
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap ) ()
inoremap ] []
inoremap } {}
inoremap <C-l> <ESC>/)\\|]\\|}\\|'\\|"<ENTER>:noh<ENTER>a
inoremap <C-a> <ESC>?(\\|[\\|{\\|'\\|"<ENTER>:noh<ENTER>i

nnoremap <leader>S :source ~/.vimrc<ENTER>
nnoremap <leader>o :only<ENTER>:w\|%bd\|e#<ENTER><ENTER>
nnoremap <leader><leader> <ESC>:w<ENTER>
nnoremap <leader>q :wq<ENTER>
nnoremap <leader>w :set wrap!<ENTER>
nnoremap <leader>L :NERDTree<ENTER>
nnoremap <leader>l :let NERDTreeWinSize=

"FUZZY FILE SEARCH
nnoremap <leader>f :find *
nnoremap <leader>F :NERDTreeFind<ENTER>

"Copy paste commands
nnoremap <leader>d "ad
nnoremap <leader>D "aD
nnoremap <leader>y "sy
nnoremap <leader>Y "sY
nnoremap <leader>p "sp
nnoremap <leader>P "sP
vnoremap <leader>d "ad
vnoremap <leader>D "aD
vnoremap <leader>y "sy
vnoremap <leader>Y "sY
vnoremap <leader>p "sp
vnoremap <leader>P "sP

"Move lines up and down
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
inoremap <leader>j <Esc>:m .+1<CR>==gi
inoremap <leader>k <Esc>:m .-2<CR>==gi
vnoremap <leader>j :m '>+1<CR>gv=gv
vnoremap <leader>k :m '<-2<CR>gv=gv

"Accelerated cursor
noremap ¬ 4l
noremap ˙ 4h
noremap ∆ 4j
noremap ˚ 4k

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

"Buffer stuff
function! BufSel(pattern)
  let bufcount = bufnr("$")
  let currbufnr = 1
  let nummatches = 0
  let firstmatchingbufnr = 0
  while currbufnr <= bufcount
    if(bufexists(currbufnr))
      let currbufname = bufname(currbufnr)
      if(match(currbufname, a:pattern) > -1)
        echo currbufnr . ": ". bufname(currbufnr)
        let nummatches += 1
        let firstmatchingbufnr = currbufnr
      endif
    endif
    let currbufnr = currbufnr + 1
  endwhile
  if(nummatches == 1)
    execute ":buffer ". firstmatchingbufnr
  elseif(nummatches > 1)
    let desiredbufnr = input("Enter buffer number: ")
    if(strlen(desiredbufnr) != 0)
      execute ":buffer ". desiredbufnr
    endif
  else
    echo "No matching buffers"
  endif
endfunction

"Bind the BufSel() function to a user-command
command! -nargs=1 Bs :call BufSel("<args>")
nnoremap <leader>h :buffers<CR>:buffer<Space>
nnoremap <leader>H <C-^>
