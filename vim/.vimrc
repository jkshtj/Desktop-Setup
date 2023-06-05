""""""""""""""""""""""""""
""""""""Mappings"""""""""
""""""""""""""""""""""""""

" Curly bracket completion
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {}     {}

" Round bracket completion
"inoremap (      ()<Left>
"inoremap (<CR>  (<CR>)<Esc>O
"inoremap ()     ()

" Custom settings
syntax on
filetype plugin indent on
set number
set numberwidth=1

""""""""""""""""""""""""""
""""""""Mappings"""""""""
""""""""""""""""""""""""""

let mapleader = ","
" Exit insert mode
inoremap jk <esc>
" Make <esc> key a no op
"inoremap <esc> <nop>

" Move to start of line
nnoremap H 0

" Move to enc of line
nnoremap L <S-$>

" Move to next error (Syntastic)
nnoremap <c-n> :lnext<CR>
nnoremap <S-n> :lprevious<CR>

" Edit vimrc on the fly
nnoremap <leader>ev :vsplit $HOME/.vimrc<cr>
nnoremap <leader>sv :source $HOME/.vimrc<cr>

" Insert double quotes around a word
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" Insert double quotes around a word
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" Comment line in rust files
autocmd FileType rust nnoremap <buffer> <leader>c I//<esc>

" Move line up or down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
