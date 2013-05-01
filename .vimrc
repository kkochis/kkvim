""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Editor Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable
set number
set nocompatible
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

" Add the hive filetype for Hive SQL of course
au BufRead,BufWrite *.hive set filetype=hive

" makes trailing whitespace show up as red
highlight TrailingWhiteSpace ctermbg=red ctermfg=white
match TrailingWhiteSpace / \+$/

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" Plugins here
call pathogen#infect()

