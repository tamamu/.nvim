set laststatus=2
if !has('gui_running')
  set t_Co=256
endif


let g:lightline_delphinus_use_powerline_glyphs = 1
let g:lightline_delphinus_use_nerd_fonts_glyphs = 1
let g:lightline_delphinus_colorscheme = 'nord_improved'

let g:lightline_delphinus_gitgutter_enable = 1

" nr2char(...) is for describing icons from devicons
let g:ale_echo_msg_error_str = nr2char(0xf421) . ' '
let g:ale_echo_msg_warning_str = nr2char(0xf420) . ' '
let g:ale_echo_msg_info_str = nr2char(0xf05a) . ' '
let g:ale_echo_msg_format = '%severity%  %linter% - %s'
let g:ale_sign_column_always = 1
let g:ale_sign_error = g:ale_echo_msg_error_str
let g:ale_sign_warning = g:ale_echo_msg_warning_str
let g:ale_statusline_format = [
      \ g:ale_echo_msg_error_str . ' %d',
      \ g:ale_echo_msg_warning_str . ' %d',
      \ nr2char(0xf4a1) . '  ']
