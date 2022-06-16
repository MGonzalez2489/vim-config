set number "show line numbers
set mouse=a  "Enable mouse for scrolling and resizing.
set numberwidth=3 "number width for line columns
set clipboard=unnamed
set clipboard=unnamedplus
syntax on
set showcmd "command is used to show the commands which you enter in the file.
set ruler "the ruler is displayed on the right side of the status line at the bottom of the window
set encoding=UTF-8
set showmatch
set matchtime=3
set sw=2
set relativenumber
set laststatus=2
set autoindent
set splitbelow
set foldmethod=syntax
set foldlevel=99
set wildignore+=*/node_modules/*

so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/maps.vim
so ~/.vim/colors/NeoSolarized.vim


colorscheme NeoSolarized


let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

"choco install ripgrep

