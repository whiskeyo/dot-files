set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

" ack and youcompleteme need some extra things installed to work

call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'davidhalter/jedi-vim'
    Plugin 'ycm-core/YouCompleteMe'
	Plugin 'preservim/nerdtree'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'cohama/lexima.vim'
	Plugin 'frazrepo/vim-rainbow'
	Plugin 'mileszs/ack.vim'
    Plugin 'ekalinin/Dockerfile.vim'
    Plugin 'junegunn/fzf'
    Plugin 'junegunn/fzf.vim'
call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Basic setup of vim
set encoding=utf-8
set background=dark
syntax enable
set wrap
set nuw=6
set cmdheight=2
set number
set autoindent
set expandtab
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4
set hlsearch
set ignorecase
set incsearch
set smartcase
set mouse=a
set backspace=indent,eol,start

"set colorcolumn=80
"highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" Setup plugins
let g:rainbow_active=1 " activates vim-rainbow plugin (coloring braces)
let NERDTreeShowHidden=1 " shows hidden files in NERDTree
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Button mappings
let mapleader=","
map <leader>sv :w!<CR>:source $MYVIMRC<CR>
nnoremap <leader>w :w!<CR>
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
nnoremap <C-Up> <Up>ddp<Up>
nnoremap <C-Down> ddp



" Mapping for NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set clipboard=unnamedplus

colorscheme industry

