" let buf = nvim_create_buf(v:false, v:true)
" call nvim_buf_set_lines(buf, 0, -1, v:true, ["test", "text"])
" let opts = {'relative': 'cursor', 'width': 10, 'height': 2, 'col': 0, 'row': 1, 'anchor': 'NW', 'style': 'minimal'}
" let win = nvim_open_win(buf, 0, opts)
" call nvim_win_set_option(win, 'winhl', 'Normal:MyHighlight')
if has('nvim-0.4')
  set wildoptions+=pum
endif
set pumblend=10
