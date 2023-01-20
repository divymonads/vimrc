" Build a custom vim:
" git clone https://github.com/vim/vim.git
" cd vim
" ./configure --with-features=huge --enable-multibyte --enable-python3interp=yes --with-python3-config-dir=$(python3-config --configdir) --with-x --enable-gui --prefix=/usr/
" sudo make install
" check it works: vim --verison
" mkdir $HOME/.vim/swp $HOME/.vim/.backup $HOME/.vim/undodir
set nocompatible
syntax on
set backspace=indent,eol,start

"PEP 8 for python
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"Fullstack stuff
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"highlight whitespace at end of line
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set title
set autoindent
set wildmenu

set history=1000
set showcmd
set showmode

set encoding=utf-8

set noerrorbells

set directory=$HOME/.vim/swp//
set backupdir=$HOME/.vim/.backup//
set undofile
set undodir=$HOME/.vim/undodir//

let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 30

set cursorline

set laststatus=2

set number
set relativenumber

set smartcase

set scrolloff=8

inoremap jk <ESC>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>

" Freed <C-l> in Netrw
nmap <leader>l <Plug>NetrwRefresh
