" SmartCorrespond.vim
"
" Complement a character like as a parenthesis.
" Example: call SmartCorrespond('[', ']')
"
" Created by Tamamu

function! SCor_left(left, right)
	let l:c = matchstr(getline('.'), '.', col('.')-1)
	if l:c == ''
		return a:left . a:right . "\<Left>"
	else
		return a:left
	endif
endfunction

function! SCor_right(right)
	let l:c = matchstr(getline('.'), '.', col('.')-1)
	if l:c == a:right
		return "\<Right>"
	else
		return a:right
	endif
endfunction

function! SCor_dup(delim)
	let l:c = matchstr(getline('.'), '.', col('.')-1)
	if l:c == a:delim
		return "\<Right>"
	elseif l:c == ''
		return a:delim . a:delim . "\<Left>"
	else
		return a:delim
	endif
endfunction

function! SmartCorrespond(left, right)
	if a:left == "'"
		let l:sp = '"'
	else
		let l:sp = "'"
	endif
	if a:left == a:right
		exec "inoremap <expr> " . a:left . " SCor_dup(" . l:sp . a:left . l:sp . ")"
	else
		exec "inoremap <expr> " . a:left . " SCor_left(" . l:sp . a:left . l:sp . ", " . l:sp . a:right . l:sp . ")"
		exec "inoremap <expr> " . a:right . " SCor_right(" . l:sp . a:right . l:sp . ")"
	endif
endfunction

