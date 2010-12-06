filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

set nocompatible
set modelines=0

augroup filetype
	au!
	au! BufRead,BufNewFile *.phtml set ft=php.html " For SnipMate
	au! BufRead,BufNewFile *.tpl set ft=html " For SnipMate
augroup END

" new stuff - http://stevelosh.com/blog/2010/09/coming-home-to-vim/
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
" old stuff
set shiftwidth=2
set tabstop=2 
set noexpandtab
set showmatch
set ignorecase
set incsearch
set autowrite
set bs=2
set hls
set bg=dark
set nowrap
set backupdir=$HOME/vi-backup
set wildignore=*Zend*,.git,*bundles*,*jpgraph*,*Smarty*,*smarty*,django_test*,backups/2010*,images*,graphs*,*amcharts*,.csv
set foldmethod=marker
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set statusline+=%{fugitive#statusline()}

"Save on Lose Focus
au FocusLost * :wa

let mapleader = ","

"*******************************************
"*******************************************
"****** COMMAND MODE REMAPPINGS ************
"*******************************************
"*******************************************

nnoremap <leader>ctf :CommandTFlush<cr>
nnoremap <leader>s /<C-p>
nnoremap <leader>g <C-g>
nnoremap <leader>w :w<cr>
nnoremap <leader>m <C-w>\|
"nnoremap <leader>q :q<cr>
nnoremap <leader>z <C-w>=
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>l :source ~/.vimrc<CR>
"Gundo
nnoremap <F5> :GundoToggle<CR>
"NERDTree
nnoremap <F6> :NERDTreeToggle<CR>
"Open a vertically-split window, and focus on it.
nnoremap <leader>v <C-w>v<C-w>l
"Carriage Return to toggle between files in window
nnoremap <CR> <C-^>

"Easier splits navigation - Remapped Caps Lock to Control
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"*******************************************
"*******************************************
"****** INSERT MODE REMAPPINGS *************
"*******************************************
"*******************************************
inoremap jj <ESC>

" colorscheme
syntax enable
colorscheme ron