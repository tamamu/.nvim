
syntax enable
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set t_Co=256
highlight Normal ctermbg=none

let &colorcolumn=join(range(81,100),",")
hi LineNr ctermbg=254

hi IndentGuidesOdd ctermbg=254
hi IndentGuidesEven ctermbg=253

" Use vsplit mode
if has("vim_starting") && !has('gui_running') && has('vertsplit')
	function! EnableVsplitMode()
		" enable origin mode and left/right margins
		let &t_CS = "y"
		let &t_ti = &t_ti . "\e[?6;69h"
		let &t_te = "\e[?6;69l\e[999H" . &t_te
		let &t_CV = "\e[%i%p1%d;%p2%ds"
		call writefile([ "\e[?6;69h" ], "/dev/tty", "a")
	endfunction

	" old vim does not ignore CPR
	map <special> <Esc>[3;9R <Nop>

	" new vim can't handle CPR with direct mapping
	" map <expr> ^[[3;3R EnableVsplitMode()
	set t_F9=[3;3R
	map <expr> <t_F9> EnableVsplitMode()
  let &t_RV .= "\e[?6;69h\e[1;3s\e[3;9H\e[6n\e[0;0s\e[?6;69l"
endif
