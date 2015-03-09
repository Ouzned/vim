execute pathogen#infect()

"Désactive le masquage des caractères
let g:vim_json_syntax_conceal = 0

"Ne coupe pas les lignes longues
set nowrap

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

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

vnoremap <leader>" <esc>`<i"<esc>`><esc>la"

inoremap jk <esc>
inoremap <esc> <nop>

iabbrev @@ francois.gerodez@gmail.com
iabbrev ccopy Copyright 2015 Francois Gerodez, all rights reserved

autocmd BufRead *.html :normal gg=G
autocmd BufNewFile,BufRead *.html setlocal nowrap
