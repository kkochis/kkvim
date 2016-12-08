""""""""""""
" Vim Config
""""""""""""

""""""""""
" Pathogen
""""""""""
filetype off " Avoid a Vim/Pathogen bug
call pathogen#infect()
call pathogen#helptags()
" call pathogen#runtime_append_all_bundles()


"""""""""""""""""""""""""
" General Editor Settings
"""""""""""""""""""""""""

set nocompatible " Don't maintain compatibility with vi
let mapleader=","

syntax enable
filetype plugin indent on

" Source initialization files
runtime! init/**.vim

set background=dark
set number
set encoding=utf-8
set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set scrolloff=5

set history=1000
set nowrap
set nowrap sidescroll=8
set sidescrolloff=8
set showmatch
set scrollopt=hor,ver,jump
set ttyfast
set backspace=indent,eol,start
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" cursor line and column
set cursorcolumn
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgray
hi CursorColumn cterm=NONE ctermbg=darkgray

" ruler settings
set ruler

" Search behaviour
set incsearch
set hlsearch
set ignorecase
set smartcase

" Fix annoyances in smart indent
set autoindent                              "Retain indentation on next line
set smartindent                             "Turn on autoindenting of blocks

inoremap # X<C-H>#|                         "And no magic outdent for comments
nnoremap <silent> >> :call ShiftLine()<CR>| "And no shift magic on comments

function! ShiftLine()
    set nosmartindent
    normal! >>
    set smartindent
endfunction

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem,*.pyc,*.pyo

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Disable virtualenv files
set wildignore+=*/venv/*,*/ENV/*

" Add the hive filetype for Hive SQL of course
au BufRead,BufWrite *.hql set filetype=hive

" Add the mason filetype :(
au BufRead,BufNewFile *.md set filetype=mason
au BufRead,BufNewFile *.mh set filetype=mason
au BufRead,BufNewFile *.md syntax sync fromstart
au BufRead,BufNewFile *.mh syntax sync fromstart

" makes trailing whitespace show up as red
highlight TrailingWhiteSpace ctermbg=red ctermfg=white
match TrailingWhiteSpace / \+$/

set tags=./.tags;/

set fileformat=unix
set nolist
set splitright

set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//

let g:ctrlp_max_files = 20000

let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

map <C-t> :tabnew<CR>
