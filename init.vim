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

call plug#begin('~/.vim/plugged')
"Temas
Plug 'morhetz/gruvbox'
"IDE
Plug 'easymotion/vim-easymotion' "theme
Plug 'scrooloose/nerdtree' "File sidebar
Plug 'christoomey/vim-tmux-navigator'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "File searcher
Plug 'junegunn/fzf.vim' "File searcher
Plug 'pangloss/vim-javascript' "enable js syntax
Plug 'ryanoasis/vim-devicons' "icons
Plug 'leafgarland/typescript-vim' "Ts syntax support
Plug 'Quramy/tsuquyomi' "enable IDE features
Plug 'Valloric/YouCompleteMe' "enable autocomplete
Plug 'vim-syntastic/syntastic' "Syntax checking
Plug 'https://github.com/Quramy/vim-js-pretty-template' "Template strings syntax support
" .editorconfig support
Plug 'https://github.com/editorconfig/editorconfig-vim'
" Auto pairs plugin
Plug 'https://github.com/jiangmiao/auto-pairs'
" Angular CLI plugin
" Use :Ng command in Vim
Plug 'https://github.com/bdauria/angular-cli.vim'


call plug#end()
colorscheme gruvbox
"set hard theme contrast
let g:gruvbox_contrast_dark = "hard"
"close NERDTree on open file
let NERDTreeQuitOnOpen=1
let g:NERDTreeWinSize=30
"set leader key to space
let mapleader=" "
"use easyMotion
nmap <Leader>s <Plug>(easymotion-s2)
"execute NerdTreeFind
nmap <Leader>p :NERDTreeFind<CR>
"save
:nnoremap <C-S> :w!<CR>
"quit
nmap <Leader>q :wq<CR>
"Find in files
:nnoremap <C-f> :Files<CR>
"enable ts the plugin to display compilation errors in the QuickFix window
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] 
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let $FZF_DEFAULT_OPTS="--preview-window 'right:57%' --preview 'bat --style=numbers --line-range :300 {}'
\ --bind ctrl-u:preview-up,ctrl-d:preview-down,
\ctrl-b:preview-page-up,ctrl-f:preview-page-down,
\shift-up:preview-top,shift-down:preview-bottom,
\alt-up:half-page-up,alt-down:half-page-down"

set encoding=UTF-8
