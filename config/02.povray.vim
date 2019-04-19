autocmd FileType pov call s:register_commands()

function! s:povray()
  let a:path = expand('%:p')
  let a:fname = expand('%:t:r')
  call system('povray ' . a:path)
  if v:shell_error == 0
    let a:command = 'xdg-open ' . a:fname . '.png'
    call system(a:command)
  endif
endfunction

function! s:register_commands()
  command! Povray :call s:povray()
endfunction
