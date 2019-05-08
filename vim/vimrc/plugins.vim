call plug#begin('~/.vim/plugged')

" THEMES
Plug 'joshdick/onedark.vim'
Plug 'ocykat/muse.vim'

" SYNTAX-HIGHLIGHTING
Plug 'sheerun/vim-polyglot'

" AUTOCOMPLETION
Plug 'Valloric/YouCompleteMe'

" GUI ENHANCEMENTS
" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" EDITOR
" NerdCommenter for quick commenting
Plug 'scrooloose/nerdcommenter'
" Aligning equal signs
Plug 'godlygeek/tabular'

call plug#end()

" YOUCOMPLETEME
" Encoding
set encoding=utf-8
" Global
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_show_diagnostics_ui = 0
" C, C++, Obj-C
let g:ycm_global_ycm_extra_conf = "~/.vim/custom/ycm/.ycm_extra_conf.py"
" Python
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_confirm_extra_conf = 0
" Closing unnecessary windows
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

"" INDENTLINE
"let g:indentLine_char='┆'

" POLYGLOT
let g:polyglot_disabled = ['latex']
