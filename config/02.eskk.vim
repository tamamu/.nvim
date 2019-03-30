let g:eskk#directory = "~/.eskk"
let g:eskk#dictionary = { 'path': "~/.skk-jisyo", 'sorted': 0, 'encoding': 'utf-8', }
let g:eskk#large_dictionary = { 'path': "~/.eskk/SKK-JISYO.L", 'sorted': 1, 'encoding': 'euc-jp', }
let g:eskk#enable_completion = 1
let g:eskk#no_default_mappings = 1

if executable('fcitx-remote')
  function! ImToggle()
    call system('fcitx-remote -c')
    return eskk#toggle()
  endfunction
  function! ImNormal()
    set normal
    return eskk#disable()
  endfunction
  noremap! <expr> <Plug>(imtoggle) ImToggle()
  noremap! <expr> <Plug>(imnormal) ImNormal()
  silent! imap <unique> <C-space> <Plug>(imtoggle)
endif

