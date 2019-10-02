
set nocompatible
filetype off

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
"source ~/.vim/.vimrc.bepo

"Remap de la touche échap
:imap ,, <Esc>
:map ,, <Esc>


" {W} -> [É]
" ——————————
" On remappe W sur É :
noremap é w
noremap É W
" Corollaire: on remplace les text objects aw, aW, iw et iW
" pour effacer/remplacer un mot quand on n’est pas au début (daé / laé).
noremap aé aw
noremap aÉ aW
noremap ié iw
noremap iÉ iW
" Pour faciliter les manipulations de fenêtres, on utilise {W} comme un Ctrl+W :
noremap w <C-w>
noremap W <C-w><C-w>
 
" [HJKL] -> {CTSR}
" ————————————————
" {cr} = « gauche / droite »
noremap c h
noremap r l
" {ts} = « haut / bas »
noremap t j
noremap s k
" {CR} = « haut / bas de l'écran »
noremap C H
noremap R L
" {TS} = « joindre / aide »
noremap T J
noremap S K
" Corollaire : repli suivant / précédent
noremap zs zj
noremap zt zk
 
" {HJKL} <- [CTSR]
" ————————————————
" {J} = « Jusqu'à »            (j = suivant, J = précédant)
noremap j t
noremap J T
" {L} = « Change »             (l = attend un mvt, L = jusqu'à la fin de ligne)
noremap l c
noremap L C
" {H} = « Remplace »           (h = un caractère slt, H = reste en « Remplace »)
noremap h r
noremap H R
" {K} = « Substitue »          (k = caractère, K = ligne)
noremap k s
noremap K S
" Corollaire : correction orthographique
noremap ]k ]s
noremap [k [s

" Désambiguation de {g}
" —————————————————————
" ligne écran précédente / suivante (à l'intérieur d'une phrase)
noremap gs gk
noremap gt gj
" onglet précédant / suivant
noremap gb gT
noremap gé gt
" optionnel : {gB} / {gÉ} pour aller au premier / dernier onglet
noremap gB :exe "silent! tabfirst"<CR>
noremap gÉ :exe "silent! tablast"<CR>
" optionnel : {g"} pour aller au début de la ligne écran
noremap g" g0
 
" <> en direct
" ————————————
noremap « <
noremap » >
noremap <tab> >>
noremap <S-tab> <<
 
" Remaper la gestion des fenêtres
" ———————————————————————————————
noremap wt <C-w>j
noremap ws <C-w>k
noremap wc <C-w>h
noremap wr <C-w>l
noremap wd <C-w>c
noremap wo <C-w>s
noremap wp <C-w>o
noremap w<SPACE> :split<CR>
noremap w<CR> :vsplit<CR>
