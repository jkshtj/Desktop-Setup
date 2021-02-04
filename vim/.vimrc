" Racer
set hidden
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

augroup Racer
        autocmd!
        autocmd FileType rust nmap <buffer> gd         <Plug>(rust-def)
        autocmd FileType rust nmap <buffer> gs         <Plug>(rust-def-split)
        autocmd FileType rust nmap <buffer> gx         <Plug>(rust-def-vertical)
        autocmd FileType rust nmap <buffer> gt         <Plug>(rust-def-tab)
        autocmd FileType rust nmap <buffer> <leader>gd <Plug>(rust-doc)
        autocmd FileType rust nmap <buffer> <leader>gD <Plug>(rust-doc-tab)
augroup END


" Pathogen
execute pathogen#infect()

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Curly bracket completion
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {}     {}

" Round bracket completion
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ()     ()

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
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Insert double quotes around a word
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" Insert double quotes around a word
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
