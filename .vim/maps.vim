let mapleader=" "

inoremap jk <ESC>

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
nnoremap <S-j> 10<C-e>
nnoremap <S-k> 10<C-y>
"Easy Motion
nmap <Leader>s <Plug>(easymotion-s2)
nmap <C-n> <Plug>(easymotion-next)
nmap <C-l> <Plug>(easymotion-prev)

nnoremap <S-Left> 10<C-w>>
nnoremap <S-Right> 10<C-w><
nnoremap <S-Up> 2<C-w>+
nnoremap <S-Down> 2<C-w>-

" Add these values to terminal profile to use <S-Up> and <S-Down>
"\033[1;2A
"\033[1;2B

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

set splitright
function! OpenTerminal()
  " move to right most buffer
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " close existing terminal
    execute "q"
  else
    " open terminal
    execute "sp term://zsh"

    " turn off numbers
    execute "set nonu"
    execute "set nornu"

    " toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-k> <C-\\><C-n><C-w><C-k>"
    execute "tnoremap <buffer> <S-Up> <C-\\><C-n><C-w><S-Up>"
    execute "tnoremap <buffer> <S-Down> <C-\\><C-n><C-w><S-Down>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction
"nnoremap <C-t> :call OpenTerminal()<CR>
