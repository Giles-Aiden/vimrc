" resets unexpected OS tweaks to vim
set nocompatible
" vundle requirement
filetype off
" runtime include vundle
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'neoclide/coc.nvim'

call vundle#end()
filetype plugin indent on

" :Prettier command setup
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" syntax highlight
syntax on
"allows windows to be stored in buffers
set hidden

" Command-line completion
set wildmenu
" Show partial commands in last line of screen
set showcmd

" case insensitive search, unless searching with caps!
set smartcase
" inc search
set incsearch
" highlights all instances of what your searching
set hlsearch
" when doesn't know how to indent it stays on the same indentation as current line
set autoindent
set smartindent

" shameless emoji formatting
set emoji

" spellcheck
set spell
set spelllang=en

" sets hybrid numbers on left
set relativenumber
set number

" python setup
set pythonthreedll=py

" Set tab indent to 2
set shiftwidth=2
set softtabstop=2
set expandtab
" Set encoding
set encoding=utf-8
" Disable wrap
set wrap!

" html autocomplete
set omnifunc=htmlcomplete#CompleteTags
" CSS autocomplete
set omnifunc=csscomplete#CompleteCSS
" JavaScript autocomplete
set omnifunc=javascriptcomplete#CompleteJS

"sets ctrl+l to remove highlighting
nnoremap <C-L> :nohl<CR><C-L>

" alt + arrow window navigation
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
