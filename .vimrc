"Basic settings {{{
set nowrap
set expandtab
set tabstop=2
set shiftwidth=2
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
set encoding=UTF-8
set fileformats=unix,dos

set statusline=\ 
set statusline+=%F\  
set statusline+=\ %m
set statusline+=\ %r
set statusline+=%=
set statusline+=%y
set statusline+=\ %p%%
set statusline+=\ (l%l:c%c)
set statusline+=\ \[%{&fileencoding?&fileencoding:&encoding},%{&fileformat}\]
set statusline+=\ 

filetype indent plugin on
syntax on

let mapleader = "ù"
let localleader = "ù"

if has('gui_running')
    set guioptions-=T  " no toolbar

    if has('gui_macvim')
        colorscheme monokai
        set guifont=Menlo:h13
    endif

    if has('gui_win32')
        colorscheme material-monokai
        set guifont=DejaVu_Sans_Mono:h10:cANSI
    endif
endif
"}}}

"Netrw settings {{{
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_dirhistmax = 0
"}}}

"Ale settings {{{
let g:ale_linters = {
            \   'javascript': ['eslint'],
            \}

let g:ale_fixers = {
            \   'javascript': ['prettier'],
            \}
"}}}

"Normal mode mappings {{{
nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>t <c-]>
nnoremap <leader>tw <c-w>]
nnoremap <leader>tn :tnext<cr>
nnoremap <leader>tp :tprev<cr>
nnoremap <leader>b :buffers<cr>:b
"}}}

"Insert mode mappings {{{
inoremap <c-s> <c-o>:w<cr>
"}}}

"HTML settings {{{
augroup filetype_html
    autocmd!
    autocmd BufRead *.html :normal gg=G
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END
"}}}

"XML settings {{{
augroup filetype_xml
    let g:xml_syntax_folding=1

    autocmd!   
    autocmd FileType xml setlocal foldlevelstart=3
    autocmd FileType xml setlocal foldmethod=syntax
augroup END
"}}}

"Javascript settings {{{
augroup filetype_javascript
    autocmd!
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType javascript setlocal foldmethod=syntax

    let g:javascript_plugin_jsdoc = 1
    let g:javascript_plugin_flow = 1
augroup END
"}}}

"Vimscript settings {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldlevelstart=0
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType vim nnoremap <buffer> <localleader>c I"<esc>
augroup END
"}}}

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
"}}}

"JSON settings {{{
augroup Filetype_json
    autocmd!
    autocmd BufReadPre *.eslintrc set filetype=json
    autocmd BufReadPre *.babelrc set filetype=json
augroup END
"}}}

packloadall
silent! helptags ALL
