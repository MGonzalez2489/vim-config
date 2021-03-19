set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2

"Syntastic syntax highlighting
set statusline+=%warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

call plug#begin('~/.vim/plugged')
"Temas
Plug 'morhetz/gruvbox'
"IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

Plug 'https://github.com/leafgarland/typescript-vim'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/bdauria/angular-cli.vim'
Plug 'https://github.com/Quramy/tsuquyomi'
Plug 'https://github.com/vim-syntastic/syntastic'

call plug#end()
colorscheme gruvbox
"set hard theme contrast
let g:gruvbox_contrast_dark = "hard"
"close NERDTree on open file
let NERDTreeQuitOnOpen=1
"set leader key to space
let mapleader=" "
"use easyMotion
nmap <Leader>s <Plug>(easymotion-s2)
"execute NerdTreeFind
nmap <Leader>p :NERDTreeFind<CR>
"save
nmap <Leader>w :w<CR>
"quit
nmap <Leader>q :q<CR>
"
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''



"esta es una modificacion
