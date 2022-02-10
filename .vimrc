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
set autoindent
set foldcolumn=1
set foldmethod=syntax

so  ~/.vim/maps.vim
so  ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

"choco install ripgrep
