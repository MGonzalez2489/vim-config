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

so  ~/AppData/Local/nvim/.vim/maps.vim
so  ~/AppData/Local/nvim/.vim/plugins.vim
so ~/AppData/Local/nvim/.vim/plugin-config.vim

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
let g:python3_host_prog = 'C:\Users\manuel.gonzalez\AppData\Local\Programs\Python\Python39\python'
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
"choco install ripgrep
