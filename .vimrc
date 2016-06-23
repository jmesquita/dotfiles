" jmesquita's .vimrc config 
let mapleader = " "
let maplocalleader = " "
set nocompatible

call plug#begin('~/.vim/plugged')
" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" cool bars
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" colors
Plug 'altercation/vim-colors-solarized'
" Zen coding
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
" Autocompletion
Plug 'AutoComplPop'
" Search results counter
Plug 'IndexedSearch'
" XML/HTML tags navigation
Plug 'matchit.zip'
" Indent text object
Plug 'michaeljsmith/vim-indent-object'
Plug 'scrooloose/syntastic'
Plug 'fisadev/vim-isort'
Plug 'pignacio/vim-yapf-format'
" Virtualenv
Plug 'jmcantrell/vim-virtualenv'
" vim troll stopper
Plug 'vim-utils/vim-troll-stopper'
Plug 'klen/python-mode'
" Fugitive
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()

set background=dark
colorscheme solarized
" tunning powerline
"
let g:airline_powerline_fonts = 1
let g:airline_solarized_bg = "dark"
let g:airline_theme = "solarized"
let g:airline#extensions#tabline#enabled = 1


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" for javascript linting
let g:syntastic_javascript_checkers = ['eslint']


set cmdheight=1
set encoding=utf-8
set termencoding=utf-8
set clipboard=unnamed
set mouse=a
set shortmess+=aI
set showmode
set showcmd
set modeline
set acd
set incsearch
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set numberwidth=3
set textwidth=79
set ruler

set splitbelow
set nobackup

" Status line
set wildchar=<tab>
set wildmenu
set wildmode=longest:full,full

set laststatus=2
set statusline=%-3.3n\ %f\ %r%#Error#%m%#Statusline#\ (%l/%L,\ %c)\ %P%=%h%w\ %y\ [%{&encoding}:%{&fileformat}]\ \ 
set nohlsearch
set ignorecase
set smartcase
set showmatch

" set cursorline
set completeopt=menu,menuone,longest,preview
set spelllang=en_us
set spellsuggest=fast,20
" imma commnt with missspellings, use me tu tesst
"

set whichwrap=h,l,<,>,[,]
set backspace=indent,eol,start
set nowrap
set history=500
set autoindent
set smartindent
set shiftround

set number

set formatoptions+=nl
set selection=inclusive

let html_use_css=1

" Clear autocmds - starts from a clean slate
autocmd!
autocmd BufWritePre *.py mark z | %s/ *$//e | 'z
" Filetype stuff
filetype on
filetype plugin on
filetype indent on

" Fix filetype detection
au BufNewFile,BufRead .torsmorc* set filetype=rc
au BufNewFile,BufRead *.inc set filetype=php
au BufNewFile,BufRead *.sys set filetype=php
au BufNewFile,BufRead grub.conf set filetype=grub

" C file specific options
au FileType c,cpp set cindent
au FileType c,cpp set formatoptions+=ro
au FileType c,cpp set makeprg=gcc\ -Wall\ -O2\ -o\ %<\ %

" Python abbreviations
au FileType python iab putf8 # -*- coding: utf-8 -*-

" Buffer handling
nnoremap <C-o> :bp!<CR>
nnoremap <C-p> :bn!<CR>
nnoremap <C-k> :bd!<CR>

" Cuz I am too lazy
map q :bd!<CR>

" insert mode
nnoremap <C-e> ggVG
" FZF config
nnoremap <silent> <leader><C-P> :Files<CR>
nnoremap <silent> <leader>a :Buffers<CR>
nnoremap <silent> <leader>; :BLines<CR>
nnoremap <silent> <leader>. :Lines<CR>
nnoremap <silent> <leader>o :BTags<CR>
nnoremap <silent> <leader>O :Tags<CR>
nnoremap <silent> <leader>? :History<CR>
nnoremap <silent> <leader>gl :Commits<CR>
nnoremap <silent> <leader>ga :BCommits<CR>
nnoremap <silent> <leader><C-R>source ~/.vimrc<CR>

set fillchars+=stl:\ ,stlnc:\

highlight TrollStopper ctermbg = red guibg = #FF0000

" For Javascript
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

set updatetime=250

syntax on
