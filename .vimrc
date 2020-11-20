" resets unexpected OS tweaks to vim
set nocompatible
" vundle requirement
filetype off
" runtime include vundle
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" GruBox Theme
Plugin 'morhetz/gruvbox'
" autocomplete
Plugin 'neoclide/coc.nvim'
" NerdTree file explorer
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
" Fuzzy File Finder
Plugin 'kien/ctrlp.vim'


call vundle#end()
filetype plugin on

" GruvBox enable
let g:gruvbox_italic=1
let g:gruvbox_improved_strings=1
let g:gruvbox_improved_warnings=1
let g:gruvbox_contrast_dark='hard'
autocmd vimenter * ++nested colorscheme gruvbox
set bg=dark

" :Pretty command setup
command! -nargs=0 Pretty :CocCommand prettier.formatFile

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

" sets hybrid numbers on left
set relativenumber
set number

" Set tab indent to 2
set shiftwidth=2
set softtabstop=2
set expandtab
" Set encoding
set encoding=utf-8
" Set Font
set guifont=Lilex\ 13
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

" Nerd tree toggle = <F3>
nmap <F3> :NERDTreeToggle<CR>
" Nerd Tree see .dotfiles
let NERDTreeShowHidden=1
