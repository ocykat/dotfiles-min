" ======== SPECIFIC LANGUAGE SETTINGS =========
function! SetIndentSize(indentsize)
  let &l:tabstop = a:indentsize
  let &l:shiftwidth = a:indentsize
  let &l:softtabstop = a:indentsize
endfunction

function! SetDocMovement()
  vmap <C-j> gj
  vmap <C-k> gk
  vmap <C-4> g$
  vmap <C-0> g^
  nmap <C-j> gj
  nmap <C-k> gk
  nmap <C-4> g$
  nmap <C-0> g^
endfunction

function! LangHtml()
  call SetIndentSize(2)
endfunction
autocmd FileType html     call LangHtml()

function! LangMarkdown()
  call SetIndentSize(2)
  call SetDocMovement()
endfunction
autocmd FileType markdown call LangMarkdown()

function! LangPascal()
  call SetIndentSize(2)
endfunction
autocmd FileType pascal   call LangPascal()

function! LangTex()
  call SetIndentSize(2)
  call SetDocMovement()
  " setlocal textwidth=79
  hi Error NONE
  hi ErrorMsg NONE
  nmap <F9> :w<CR>:!latexmk<space>-pdf<space>main.tex<CR>
endfunction
let g:tex_flavor = "latex"
autocmd FileType tex      call LangTex()
autocmd FileType latex    call LangTex()
autocmd FileType plaintex call LangTex()

function! LangVim()
  call SetIndentSize(2)
endfunction
autocmd FileType vim      call LangVim()
