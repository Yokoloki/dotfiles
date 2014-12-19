" View
set nu 
set ru 
set cursorline 
set cursorcolumn 
set laststatus=2 
set t_Co=256 
set colorcolumn=80
set showmatch

" Encoding
set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set termencoding=utf-8

" Color Scheme
if isdirectory(expand("$HOME/.vim/colors")) 
    set background=dark
    color solarized
endif

" WildMenu
set wildmenu 
set wildignore=*.o,*~,*.pyc

" Editor
set et 
set autoindent
set nobackup 
set noswapfile 
set sw=4 sts=4 ts=4
filetype plugin indent on
syntax on

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" NMap
let mapleader=","
nmap <cr> :nohlsearch<cr>
nmap <Leader><Leader> :NERDTreeToggle<cr>
nmap <Leader>. :Tagbar<cr>
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l
nmap <F5> :PyFlake<cr>

" Bundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundle List
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'andviro/flake8-vim'
Bundle 'altercation/vim-colors-solarized'
" Bundle 'scrooloose/syntastic'

" Airline
let g:airline#extensions#tabline#enabled = 1

" NerdTree
let NERDTreeIgnore = ['\.o$','\.so','\.pyc$']

" Flake8
let g:PyFlakeOnWrite = 0

" Sytastic
" let g:syntastic_cpp_compiler = 'clang++'
" let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
