let mapleader=" "

"to open nerdtree
nmap <Leader>f : NERDTreeFind<CR>

"to find files in folder
nmap <C-p> :Files<CR>

" To find word in files
nmap <C-f> :Rg<CR>
 
""shortcuts
"save file
nmap <Leader>w :w<CR>
"quit file
nmap <Leader>q :q<CR>

"go to definition
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" faster scrolling
"nnoremap <C-j> 10<C-e>
nnoremap <S-j> 10<C-e>
nnoremap <S-k> 10<C-y>
"Easy Motion
nmap <Leader>s <Plug>(easymotion-s2)

nnoremap <Leader>. 10<C-w><
nnoremap <Leader>, 10<C-w>>


"prettier
"nmap <Leader>kc <Plug>(Prettier)
nnoremap <Leader>kc :Prettier<CR>

" Use <c-space> to trigger completion.
if has('nvim')
   inoremap <silent><expr> <c-space> coc#refresh()
else
   inoremap <silent><expr> <c-@> coc#refresh()
endif

" tabs navigation
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>


