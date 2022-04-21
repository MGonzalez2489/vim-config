" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

"NeerdTree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=0
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'
highlight! link NERDTreeFlags NERDTreeDir

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" fzf
let $FZF_DEFAULT_OPTS="--preview-window 'right:57%' --preview 'bat --style=numbers --color=always --line-range :500 {}'
      \ --bind ctrl-u:preview-up,ctrl-d:preview-down,
      \ctrl-b:preview-page-up,ctrl-f:preview-page-down,
      \shift-up:preview-top,shift-down:preview-bottom,
      \alt-up:half-page-up,alt-down:half-page-down"
"
let $FZF_PREVIEW_PREVIEW_BAT_THEME='gruvbox'
"
let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g"!{.git,node_modules,vendor}/*"'
command! -bang -nargs=? -complete=dir Files
     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

let g:fzf_preview_use_dev_icons = 1
let g:UltiSnipsSnippetDirectories=['./UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-l>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


