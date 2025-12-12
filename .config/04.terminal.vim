autocmd TermOpen * :call SetTerminalMode()
function! SetTerminalMode()
  setlocal noshowcmd
  setlocal nonumber
  setlocal noshowmode
  setlocal noruler
endfunction

tnoremap <Esc> <C-\><C-n>
