set nocompatible

if has("syntax")
    syntax on
endif

set mouse=a                             " enables mouse outside gvim

set cmdheight=2                         " size of command bar
set number                              " add line numbering at left
highlight LineNr ctermfg=darkgrey       " make line numbers dark
set ruler
set scrolloff=5                         " keep 5 lines at top and bottom
set textwidth=80                        " 80 width terminal
set background=dark                     " makes text more readable
set lazyredraw                          " don't redraw mid-macro
set autowrite                           " autosave on make, etc

set ignorecase smartcase                " search ignores case unless given
                                        " a capitalized query
set autoindent
set shiftwidth=4
set softtabstop=4
set tabstop=8
set shiftround                          " round to next tab stop
set expandtab                           " spaces instead of tabs


set showcmd
set showmatch
set incsearch                           " finds matches as query is typed
set hlsearch                            " highlights all matches

set noerrorbells
set visualbell t_vb=

nnoremap <space> za                     " spacebar toggles folds

" swap : and ; in normal mode and visual mode
nnoremap : ;
nnoremap ; :
vnoremap : ;
vnoremap ; :

" C-space toggles in and out of input mode
nnoremap <C-@> a
imap <C-@> <Esc>

" :C clears current search pattern
command C let @/=""

filetype plugin indent on

" OCaml settings
autocmd FileType ocaml setlocal shiftwidth=2 tabstop=2 softtabstop=2
