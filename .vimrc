set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
"set noshowmode
set autoindent
call plug#begin('~/AppData/Local/nvim/plugged')

" Theme
Plug 'morhetz/gruvbox'

" IDE
"" Easymotion
Plug 'easymotion/vim-easymotion'
"" Nerdtree
Plug 'scrooloose/nerdtree'
"" To navigate throgut open files
Plug 'christoomey/vim-tmux-navigator'
"" File searcher
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim' 
"" Enable js syntax
Plug 'pangloss/vim-javascript'
"" Icons
Plug 'ryanoasis/vim-devicons'
" typescript support
Plug 'leafgarland/typescript-vim'
"coc 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Autoclose
Plug 'townk/vim-autoclose'
Plug 'alvan/vim-closetag'

"Angular CLI and support
Plug 'https://github.com/bdauria/angular-cli.vim'

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'

" Prettier

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let mapleader=" "
let g:NERDTreeWinSize=30
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
let g:python3_host_prog = 'C:\Users\manuel.gonzalez\AppData\Local\Programs\Python\Python39\python'
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
   
	"\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" nmap = just works on normal mode
" <CR> = enter


"configure easymotion to sarch by two characters
"to navigate throgut findingis: select finding key
nmap <Leader>s <Plug>(easymotion-s2)
"to open nerdtree
nmap <Leader>f : NERDTreeFind<CR>
"to find files in folder
nmap <C-p> :Files<CR>

"shortcuts
""save file
nmap <Leader>w :w<CR>
""quit file
nmap <Leader>q :q<CR>

let $FZF_DEFAULT_OPTS="--preview-window 'right:57%' --preview 'bat --style=numbers --color=always --line-range :500 {}'
\ --bind ctrl-u:preview-up,ctrl-d:preview-down,
\ctrl-b:preview-page-up,ctrl-f:preview-page-down,
\shift-up:preview-top,shift-down:preview-bottom,
\alt-up:half-page-up,alt-down:half-page-down"
"
let $FZF_PREVIEW_PREVIEW_BAT_THEME='gruvbox-dark'

let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!{.git,node_modules,vendor}/*"'
command! -bang -nargs=? -complete=dir Files
     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

let g:fzf_preview_use_dev_icons = 1

"choco install ripgrep
