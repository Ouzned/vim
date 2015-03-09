execute pathogen#infect()

"Désactive le masquage des caractères
let g:vim_json_syntax_conceal = 0

"Inserer des espaces à la place des tabulations
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

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

syntax on
filetype indent plugin on
set omnifunc=syntaxcomplete#Complete

let mapleader = "ù"
let maplocalleader = "ù"

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
inoremap jk <esc>
vnoremap <leader>" <esc>`<i"<esc>`><esc>la"
onoremap b /return<cr>
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>

augroup html
    autocmd!
    autocmd BufRead *.html :normal gg=G
    autocmd BufNewFile,BufRead *.html setlocal nowrap
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END

augroup javascript
    autocmd!
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
augroup END

augroup python
    autocmd!
    autocmd FileType python setlocal nowrap number nolist nowrapscan nohlsearch
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType python nnoremap <buffer> <localleader>cl /class \zs<cr>
    autocmd FileType python nnoremap <buffer> <localleader>CL ?class \zs<cr>
    autocmd FileType python nnoremap <buffer> <localleader>f /def \zs<cr>
    autocmd FileType python nnoremap <buffer> <localleader>F ?def \zs<cr>
    autocmd FileType python onoremap <buffer> cl :<c-u>execute "normal! ?class \\zs\rvt:"<cr>
    autocmd FileType python onoremap <buffer> f :<c-u>execute "normal! ?def \\zs\rvt("<cr>
    autocmd FileType python iabbrev <buffer> iff if:<left>
    autocmd FileType python iabbrev <buffer> c class:<cr>"""<cr>"""<esc>ko<tab>@docstring<esc>kk$i
    autocmd FileType python iabbrev <buffer> p print
    autocmd FileType python iabbrev <buffer> r return
    autocmd FileType python iabbrev <buffer> d def:<cr>"""<cr>"""<esc>ko<tab>@docstring<esc>kk$i
    autocmd FileType python iabbrev <buffer> f from
    autocmd FileType python iabbrev <buffer> i import
    autocmd FileType python iabbrev <buffer> s self
augroup END
