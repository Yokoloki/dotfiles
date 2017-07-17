" View
set nu 
set ru 
" set cursorline 
" set cursorcolumn 
set laststatus=2 
set t_Co=256 
" set colorcolumn=80
set showmatch

" Encoding
set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set termencoding=utf-8

" Color Scheme
" if isdirectory(expand("$HOME/.vim/colors")) 
"     set background=dark
"     color solarized
" endif

" WildMenu
set wildmenu 
set wildignore=*.o,*~,*.pyc

" Editor
set et 
set nobackup 
set noswapfile 
set noexpandtab
set sw=4 sts=4 ts=4
filetype indent on
syntax on

" Folding
set foldmethod=indent
set foldlevelstart=20

" Search
set incsearch
set hlsearch
set smartcase

" YCM
set completeopt-=preview

" Buffer
nmap <Tab> :bn<cr>
nmap < :bp<cr>
nmap > :bn<cr>
nmap <C-Q> :bp<cr>:bd #<cr>

" Remove Tailing Tabs/Spaces
if has('autocmd')
	function! RemoveTrailingSpace()
		if $VIM_HATE_SPACE_ERRORS != '0'
			normal m`
			silent! :%s/\s\+$//e
			normal ``
		endif
	endfunction
	autocmd BufWritePre *.c,*.cpp,*.h,*.py,*.template call RemoveTrailingSpace()
	" autocmd FileType python let &makeprg='pylint % -i y -r n -f parseable'
	" autocmd BufDelete *.py make
endif

" NMap
let mapleader=","
nmap <cr> :nohlsearch<cr>
nmap <Leader><Leader> :NERDTreeToggle<cr>
nmap <Leader>. :Tagbar<cr>
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l
" nmap <F5> :PyFlake<cr>

" Ctrlp
" let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_custom_ignore = {
	\ 'dir': '\v[\/]\.(git|svn)$',
	\ 'file': '\v\.(pid|pyc|so)$',
	\ }
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 0
let g:ctrlp_max_height = 30
let g:ctrlp_follow_symlinks = 0
let g:ctrlp_regexp = 0
let g:ctrlp_lazy_update = 1

" Bundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundle List
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'tmhedberg/SimpylFold'
Bundle 'Valloric/YouCompleteMe'
" Bundle 'andviro/flake8-vim'
" Bundle 'scrooloose/syntastic'

" Airline
let g:airline#extensions#tabline#enabled = 1

" NerdTree
let NERDTreeIgnore = ['\.o$','\.so','\.pyc$']

" Flake8
" let g:PyFlakeOnWrite = 0

" Sytastic
" let g:syntastic_cpp_compiler = 'clang++'
" let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
