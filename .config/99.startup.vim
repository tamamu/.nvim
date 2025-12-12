function! MoveToBaseBuffer(timer)
  exe "winc k"
endfunction

function! SetTerm(timer)
  winc j
  resize 8
  terminal
  call timer_start(5, function("MoveToBaseBuffer"))
endfunction

function! SplitWindow(timer)
  winc l
  set sb
  8sp
  set nosb
  winc j
  call timer_start(5, function("SetTerm"))
endfunction

function! RunNERDTree(timer)
  NERDTree
  call timer_start(5, function("SplitWindow"))
endfunction

"call timer_start(5, function("RunNERDTree"))
