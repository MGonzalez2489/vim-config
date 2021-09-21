let mapleader=" "

 " nmap = just works on normal mode
 " " <CR> = enter
 
 " "configure easymotion to sarch by two characters
 " "to navigate throgut findingis: select finding key
  nmap <Leader>s <Plug>(easymotion-s2)
 " "to open nerdtree
  nmap <Leader>f : NERDTreeFind<CR>
 " "to find files in folder
  nmap <C-p> :Files<CR>
 
 " "shortcuts
  ""save file
  nmap <Leader>w :w<CR>
  ""quit file
  nmap <Leader>q :q<CR>



"prettier
nmap <Leader>kc <Plug>(Prettier)
 

  " Use <c-space> to trigger completion.
   if has('nvim')
     inoremap <silent><expr> <c-space> coc#refresh()
     else
       inoremap <silent><expr> <c-@> coc#refresh()
       endif
  
       
