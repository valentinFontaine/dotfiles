
set nocompatible
filetype off

"Ajout de Vundle au runtime au runtime path et initialisation
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" on indique à Vundle de s'auto-gére
Plugin 'gmarik/Vundle.vim'

"Plugin

call vundle#end()
filetype plugin indent on

set title "Met à jour le titre de la fenetre
set number "Affiche le numéro de ligne
set ruler "Affiche le numéro de ligne 
set wrap  "Remet à la ligne les lignes trop longues

"Affiche numéro de ligne en nombre relatifs
:set number relativenumber

"Indentation
set autoindent "Auto-indentation des nouvelles lignes
set expandtab  " Remplace les tabulations par des espaces 
set shiftwidth=4 " auto indentation de 4 espaces
set smartindent 
set smarttab
set softtabstop=4 "Tabulation = 4 espaces 

set scrolloff=3  "Affiche un minimum de 3 ligne autour du curseur 

" Recherche 
set ignorecase 
set smartcase "Si une recherche contien une majustcule, on réactive la sensibilité à la casse 

set incsearch "surligne les résultats pendant la saisie
set hlsearch  "surligne les résultats de la recherche

set visualbell "Empeche Vim de beeper
set noerrorbells "Empeche vim de beeper

"Active le comportemen 'habituel' de la touche retour en arrière 
set backspace=indent,eol,start

"Active la coloration syntaxique
syntax enable
set background=dark
colorscheme desert


"Desactivation des touches directionnelles
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"Remaper les copier - coller des fenêtres extérieures 
"____________________________________________________

noremap <C-v> "+gP
noremap <C-c> "+y
noremap <C-x> "+x


let mapleader = "'"
set hidden



"ajout des modifications du clavier bépo
source ~/.vim/.vimrc.bepo


