" General settings
set background=light
set ruler
set showmatch
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set expandtab
set shiftwidth=4
set tabstop=4
set mouse=a
set number
set relativenumber
set showcmd
set incsearch 
set hlsearch
set ignorecase
set smartcase
set shortmess+=I

filetype plugin on
filetype indent on
syntax on


" Key remapping
nmap <Space> i_<Esc>r
inoremap jj <Esc>

" When text is wrapped, move by terminal rows, not lines
noremap  <buffer> <silent> <Up>   gk
noremap  <buffer> <silent> <Down> gj 

vnoremap < <gv
vnoremap > >gv

" Easy insertion of a trailing ; or , from insert mode
imap ;; <Esc>A;<Esc>
imap ,, <Esc>A,<Esc>
