"Basic settings {{{
set nowrap
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
"Permet de masquer un buffer modifié
set hidden
"Active le menu d'autocomplétion
set wildmenu
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

"Netrw settings {{{
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_dirhistmax = 0
" }}}

"Normal mode mappings {{{
nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" Wraps the word between double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" Wraps the word between single quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
" Jumps to tag definition
nnoremap <leader>t <c-]>
" Jumps to tag definition in a new window
nnoremap <leader>tw <c-w>]
" Jumps to next matching tag
nnoremap <leader>tn :tnext<cr>
" Jumps to previous matching tag
nnoremap <leader>tp :tprev<cr>
" Prints buffer list and prompts to select buffer number
nnoremap <leader>b :buffers<cr>:b<space>
" }}}

" Insert mode mappings {{{
inoremap jk <esc>
" }}}

" Operator pending mode mappings {{{
" Apply command on all text located bewteen next parenthesis
onoremap in( :<c-u>normal! f(vi(<cr>
" Apply command on all text located between previous parenthesis
onoremap il( :<c-u>normal! F)vi(<cr>
" Apply command up to previous =
onoremap = :<c-u>normal! F=llv$<cr>
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
    autocmd FileType javascript setlocal foldmethod=syntax

    let g:javascript_plugin_jsdoc = 1
    let g:javascript_plugin_flow = 1
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

"Haskell settings {{{
augroup filetype_haskell
    autocmd FileType haskell nnoremap <buffer> <localleader>g :HdevtoolsType<CR>
    autocmd FileType haskell nnoremap <buffer> <silent> <localleader>h :HdevtoolsClear<CR>
augroup END
"}}}

"CtrlP settings {{{
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
\}
"}}}

"Syntastic settings {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}

"CSS settings {{{
augroup filetype_css
    autocmd!
    autocmd FileType css setlocal foldmethod=syntax
augroup END
" }}}

