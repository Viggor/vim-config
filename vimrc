syntax on

set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-eunuch'
Plugin 'airblade/vim-gitgutter'
Plugin 'chriskempson/base16-vim'
Plugin 'bling/vim-airline'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle "garbas/vim-snipmate"
Bundle 'snipmate-snippets'
Bundle 'honza/vim-snippets'
Bundle 'sebastienbeau/vim-openobject-snippets'
Plugin 'vim-scripts/taglist.vim'
Plugin 'nvie/vim-flake8'
Plugin 'klen/python-mode'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:delimitMate_autoclose = 1  
let g:delimitMate_expand_cr = 2  
let g:delimitMate_expand_space = 1  
let delimitMate_expand_inside_quotes = 1  
let g:delimitMate_smart_quotes = 1  
let g:delimitMate_jump_expansion = 1  
let g:delimitMate_matchpairs = "(:),[:],{:},<:>"  

let g:airline_powerline_fonts = 1

syntax enable
set background=dark
"colorscheme base16-default

set laststatus=2
set t_Co=256
set encoding=utf-8

set incsearch
set ignorecase smartcase
set hlsearch

let NERDTreeIgnore=['.pyc$']

"set wildmode=longest,list,full
"set wildmenu

"ino <tab> <c-r>=TriggerSnippet()<cr> 
"snor <tab> <esc>i<right><c-r>=TriggerSnippet()<cr>

"Pathogen conf
execute pathogen#infect()

" Softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set number

autocmd FileType text setlocal textwidth=78
autocmd FileType python set colorcolumn=80

set cursorline
set ignorecase
set smartcase
set showmatch
let mapleader = ","

"pymode options
let g:pymode_folding = 0
let g:pymode_breakpoint_cmd = 'import ipdb; ipdb.set_trace()'
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'pylint']
