call plug#begin('~/.vim/plugged')

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


" css hex colors
Plug 'https://github.com/ap/vim-css-color'

Plug 'tpope/vim-fugitive'

" Track the engine.
Plug 'SirVer/ultisnips'

call plug#end()

