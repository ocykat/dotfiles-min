function! SourceRCFile(filename)
  let filepath = "~/.vim/vimrc/" . a:filename . ".vim"
  if filereadable(expand(filepath))
    exec "source " . filepath
  endif
endfunction

for filename in ["editor", "keymap", "plugins", "specific", "theme"]
  call SourceRCFile(filename)
endfor
