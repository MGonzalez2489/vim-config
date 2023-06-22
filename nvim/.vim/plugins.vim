call plug#begin('~/.vim/plugged')

" syntax
Plug 'sheerun/vim-polyglot'

" status bar
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

" theme
Plug 'morhetz/gruvbox'

" Tree
Plug 'scrooloose/nerdtree'
Plug 'her/synicons.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'johnstef99/vim-nerdtree-syntax-highlight/tree/master'


" typing
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" tmux
Plug 'preservim/vimux'
Plug 'christoomey/vim-tmux-navigator'

" autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'

" git
Plug 'fgr1986/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"css
Plug 'ap/vim-css-color'

Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'tomasiser/vim-code-dark'

"databases
Plug 'https://tpope.io/vim/dadbod.git'
Plug 'https://github.com/kristijanhusak/vim-dadbod-ui'
call plug#end()

