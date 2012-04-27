" Needed on some linux distros.
" see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set shiftwidth=2
set autoindent
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set nocompatible
set vb
set showmatch
filetype plugin indent on
syntax on
set incsearch
set hlsearch
set ignorecase
set smartcase
colorscheme twilight2
" colorscheme proton
let ruby_space_errors = 1
map :nt :NERDTreeToggle

" Latex setup on mac
" From http://vim-latex.sourceforge.net/documentation/latex-suite/recommended-settings.html
" and http://code.google.com/p/macvim/wiki/FAQ
let g:Tex_ViewRule_pdf = 'Preview'
" let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
let g:tex_flavor='latex'
