syntax on
set encoding=utf-8

set tabstop=4 
set shiftwidth=4
set smartindent

set belloff=all

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set showcmd

set wildmenu

set clipboard=unnamed

set relativenumber
set number

colorscheme desert

set incsearch
set nohlsearch

set colorcolumn=80
set scrolloff=8

inoremap jk <ESC>
let mapleader=","

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>s :wincmd v<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
