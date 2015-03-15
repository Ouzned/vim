execute pathogen#infect()

"Basic settings {{{
set nowrap
"Deactivate quote hiding in json files (quite annoying)
let g:vim_json_syntax_conceal=0
"Activate xml folding
let g:xml_syntax_folding=1
"Insert space instead of tabs
set expandtab
"Inserer 4 espaces à la place d'une tabulation
set tabstop=4
"Nombre d'espace par niveau d'indentation
set shiftwidth=4
"Numéro de ligne
set number
"Affiche les commandes en cours de saisie
set showcmd
"Affiche le bandeau du bas avec le nom de fichier
set laststatus=2
"Ne pas écrire dans le fichier .viminfo
set viminfo="NONE"
"Indente une ligne comme la ligne du dessus
set autoindent
"Commencer à chercher dès le début de saisie
set incsearch
"Surligner les matchs de recherche
set hlsearch
"Set background color
set background=dark
"Select nice colorscheme
colorscheme solarized
filetype indent plugin on
"Activate syntax coloring
syntax on
"Custom key used for mappings
let mapleader = "ù"
let maplocalleader = "ù"
" }}}

"Global mappings {{{
nnoremap <leader>ev :70vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>t <c-]>
nnoremap <leader>tw <c-w>]
nnoremap <leader>tn :tnext<cr>
nnoremap <leader>tp :tprev<cr>
inoremap jk <esc>
vnoremap <leader>" <esc>`<i"<esc>`><esc>la"
onoremap b /return<cr>
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
" }}}

"HTML settings {{{
augroup filetype_html
    autocmd!
    "Formats the entire file
    autocmd BufRead *.html :normal gg=G
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END
" }}}

"XML settings {{{
augroup filetype_xml
    autocmd!    
    autocmd FileType xml setlocal foldlevelstart=3
    autocmd FileType xml setlocal foldmethod=syntax
augroup END
" }}}

"Javascript settings {{{
augroup filetype_javascript
    autocmd!
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
augroup END
" }}}

"Python settings {{{ 
augroup filetype_python
    autocmd!
    autocmd FileType python setlocal number nolist nowrapscan nohlsearch textwidth=80
    autocmd FileType python setlocal foldmethod=indent
    autocmd FileType python setlocal foldlevelstart=2
    "Adds python single-line comments
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType python nnoremap <buffer> <localleader>cl /class \zs<cr>
    autocmd FileType python nnoremap <buffer> <localleader>Cl ?class \zs<cr>
    autocmd FileType python nnoremap <buffer> <localleader>f /def \zs<cr>
    autocmd FileType python nnoremap <buffer> <localleader>F ?def \zs<cr>
    "Movement mapping to reach the current class name
    autocmd FileType python onoremap <buffer> cn :<c-u>execute "normal! ?class \\zs\rvt:"<cr>
    "Movement mapping to reach the current def name
    autocmd FileType python onoremap <buffer> fn :<c-u>execute "normal! ?def \\zs\rvt("<cr>
    "Inserts a new class with a docstring, leaving the cursor ready to type the class name
    autocmd FileType python iabbrev <buffer> c class:<cr>"""<cr>"""<esc>ko<tab>@docstring<esc>kk$i
    "Inserts a new def with a docstring, leaving the cursor ready to type the def name
    autocmd FileType python iabbrev <buffer> d def:<cr>"""<cr>"""<esc>ko<tab>@docstring<esc>kk$i
    autocmd FileType python iabbrev <buffer> iff if:<left>
    autocmd FileType python iabbrev <buffer> p print
    autocmd FileType python iabbrev <buffer> r return
    autocmd FileType python iabbrev <buffer> f from
    autocmd FileType python iabbrev <buffer> i import
    autocmd FileType python iabbrev <buffer> s self
augroup END
" }}}

"Vimscript settings {{{
augroup filetype_vim
    autocmd!
    "Close all folds on startup
    autocmd FileType vim setlocal foldlevelstart=0
    "Enables code folding using markers {{{ and }}}
    autocmd FileType vim setlocal foldmethod=marker
    "Adds vimscript comments
    autocmd FileType vim nnoremap <buffer> <localleader>c I"<esc>
augroup END
" }}}

"VIM help settings {{{
augroup filetype_help
    "Display all the characters
    autocmd FileType help setlocal conceallevel=0
augroup END
"}}}

"PHP settings  {{{
augroup filetype_php
    autocmd!
    "Fold php based on syntax files
    autocmd FileType php let g:php_folding=1
    autocmd FileType php let g:php_sql_query=1
    autocmd FileType php let g:php_htmlInStrings=1
    autocmd FileType php setlocal foldmethod=syntax
    autocmd FileType php iabbrev <buffer> mh Mage::helper('')<esc>hhi
augroup END
" }}}

function! NextSection(type, backwards)
    if a:type == 1
        let pattern = 'class \zs.*:$'
    else
        let pattern = 'def \zs.*:$'
    endif

    if a:backwards == 1
        let dir = '?'
    else
        let dir = '/'
    endif

    execute 'silent normal! ' . dir . pattern . "\r"
    normal! :nohlsearch
endfunction
