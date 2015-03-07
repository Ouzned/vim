execute pathogen#infect()

"Désactive le masquage des caractères
"let g:vim_json_syntax_conceal = 0

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

" Affiche le bandeau du bas avec le nom de fichier
set laststatus=2

" Ne pas écrire dans le fichier .viminfo
set viminfo="NONE"

set autoindent
set incsearch
set hlsearch

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

syntax on
filetype indent plugin on
set omnifunc=syntaxcomplete#Complete

nmap <C-n> :tabn<CR>

" dt<char> supprime tout jusqu'au caractère
" >i{ indente le contenu du bloc en cours
" < désindente
" :sh ouvre un shell
" après un ctrl+z faire fg pour retourner à vim
" :tabe ouvre un fichier dans un nouvel onglet
" :tabn et :tabp naviguent entre les onglet
" gt et gT sont des raccourcis pour changer de tabs
