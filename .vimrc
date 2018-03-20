"Basic settings {{{
set nowrap
set expandtab
set tabstop=4
set shiftwidth=4
set number
set hidden
set wildmenu
set showcmd
set laststatus=2
set viminfo="NONE"
set autoindent
set incsearch
set hlsearch
set background=dark

set statusline=
set statusline+=\ %f
set statusline+=\ %y
set statusline+=\ %m
set statusline+=\ %r
set statusline+=%=
set statusline+=\ \[%{&fileencoding},\ %{&fileformat}\]
set statusline+=\ L:%l/%L
set statusline+=\ C:%c\ 

colorscheme monokai
filetype indent plugin on
syntax on

let mapleader = "ù"
let maplocalleader = "ù"
" }}}

"Netrw settings {{{
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_dirhistmax = 0
" }}}

"Normal mode mappings {{{
nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>t <c-]>
nnoremap <leader>tw <c-w>]
nnoremap <leader>tn :tnext<cr>
nnoremap <leader>tp :tprev<cr>
nnoremap <leader>b :buffers<cr>:b<space>
" }}}

" Insert mode mappings {{{
inoremap jk <esc>
" }}}

" Operator pending mode mappings {{{
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap = :<c-u>normal! F=llv$<cr>
" }}}

"HTML settings {{{
augroup filetype_html
    autocmd!
    autocmd BufRead *.html :normal gg=G
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END
" }}}

"XML settings {{{
augroup filetype_xml
    autocmd!    
    autocmd FileType xml setlocal foldlevelstart=3
    autocmd FileType xml setlocal foldmethod=syntax

    let g:xml_syntax_folding=1
augroup END
" }}}

"Javascript settings {{{
augroup filetype_javascript
    autocmd!
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType javascript setlocal foldmethod=syntax

    let g:javascript_plugin_jsdoc = 1
    let g:javascript_plugin_flow = 1
augroup END
" }}}

"Vimscript settings {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldlevelstart=0
    autocmd FileType vim nnoremap <buffer> <localleader>c I"<esc>
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

"VIM help settings {{{
augroup filetype_help
    autocmd FileType help setlocal conceallevel=0
augroup END
"}}}

"Haskell settings {{{
augroup filetype_haskell
    autocmd FileType haskell nnoremap <buffer> <localleader>g :HdevtoolsType<CR>
    autocmd FileType haskell nnoremap <buffer> <silent> <localleader>h :HdevtoolsClear<CR>
augroup END
"}}}

"CSS settings {{{
augroup filetype_css
    autocmd!
    autocmd FileType css setlocal foldmethod=syntax
augroup END
" }}}

packloadall
silent! helptags ALL
