let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

function! Multiple_cursors_before()
  if exists('*deoplete#disable')==2
    call deoplete#disable()
  endif
endfunction

function! Multiple_cursors_after()
  if exists('*deoplete#enable')==2
    call deoplete#enable()
  endif
endfunction
