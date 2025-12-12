let g:vlime_leader = ","
let g:vlime_cl_impl = "ros"
function! VlimeBuildServerCommandFor_ros(vlime_loader, vlime_eval) abort
  echo a:vlime_loader
  return ["ros", "run",
    \ "--load", "~/.cache/dein/repos/github.com/vlime/vlime/lisp/load-vlime.lisp",
    \ "--eval", a:vlime_eval]
endfunction
