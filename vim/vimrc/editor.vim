" FILE TYPE DETECTION
filetype on
filetype plugin on
filetype indent on

" TERMINAL COLOR
syntax enable
set t_Co=256
set term=screen-256color

" LINE NUMBER - ON
set nu

" INDENTATION
" Global
set autoindent     " indents like the previous line
"set smartindent   " add one level of indentation in some cases
set tabstop=4      " hard tab stop
set shiftwidth=4   " when indenting with '>', add 4 spaces
set softtabstop=4  " soft tab stop
set expandtab      " on pressing tab, insert 4 spaces

" WORD WRAPPING
set wrap
set linebreak

" BACKSPACE PROBLEM FIX
set backspace=indent,eol,start

" BACKUP FILES - OFF
set nobackup
no backup files
set nowritebackup
set noswapfile
set noundofile

" WINDOW SPLITTING - to the right and bottom for new buffer
set splitright
set splitbelow

" 80-column layout
"set colorcolumn=80

" COPY AND PASTE
" Make vim use the system clipboard
"set clipboard=unnamed     " for Windows
set clipboard=unnamedplus " for Linux

" REMOVE TRAILING WHITESPACES
autocmd BufWritePre * %s/\s\+$//e

" ERROR BELLS
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
