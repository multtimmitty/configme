"Configuration General
"
"Habilita la sintaxis para lenguajes de programacion
syntax enable
"
"Guarda los archivos en codificacion uft-8
set encoding=utf-8
"
"Habilita el numero de lineas del archivo
set number
"
"Configura el ancho del numero de lineas
set numberwidth=1
"
"Habilita el uso de mouse
set mouse=a
"
"Habilitar el portapapeles para el sistema
set clipboard=unnamed
"
"Habilitar el visualizador de comandos
set showcmd
"
"Habilita la posision actula
set ruler
"
"Habilita los brackes de '"([{}])"'
set showmatch
"
"Habilita el identado de izquierda a derecha con espacios
"set sw=3
"
"Habilita el numero de lineas de forma recursiva
"set relativenumber
"
"Habilita la barra baja (status)
set laststatus=2
"
"Deshabilita el modo en el que se encuentra
set noshowmode
"
"Usar x numero de tabs
set tabstop=3
"
"Inserta espacios en lugar de tabs
"set expandtab
"
"Indentacion X
set shiftwidth=3
set softtabstop=3
set shiftround
"
"Muetra una sombra en la linea actual
set cursorline
"
"No divide la pantalla si es muy larga la panalla
set nowrap
"
"Muestar el titulo / nombre del archivo
set title
"
"Activa los colores de la terminal
set termguicolors
"
"configuration of font
set guifont=JetBrainsMonoMedium\ Nerd\ Font\ Medium:h11

" habilitar simbolo de tabs y enter
set list
set listchars=tab:→\ ,eol:↲

"[Pluggins]
"
call plug#begin('~/.config/nvim/plugged')

"Tema gruvbox
Plug 'morhetz/gruvbox'

"Pluggin que muestra los archivos en arbol
Plug 'scrooloose/nerdtree'

"Pluggin que complementa nerdtree para moverse entre ventanas
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

"Configuracion de pluggins

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

"Deshabilita el nerdtree cuando se abre un archivo desde nerdtree
let NERDTreeQuitOnOpen=1

let mapleader=" "
nmap <Leader>nt :NERDTreeFind<CR>
