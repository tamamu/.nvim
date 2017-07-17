"               ###    ##  ##      ##  ##  ###    ###
"               ####   ##   ##    ##   ##  ####  ####
"               ## ##  ##    ##  ##    ##  ## #### ##
"               ##  ## ##     ####     ##  ##  ##  ##
"               ##   ####      ##      ##  ##      ##
"
"                     NeoVim settings for Eddie


set encoding=utf-8
scriptencoding utf-8
if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  runtime! plugin/python_setup.vim
endif

set tags=$HOME/.config/nvim/tags/lisp.tags

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
"dein Scripts----------------------
if &compatible
  set nocompatible
endif

" Settings for geeknote
let g:GeeknoteNeovim="True"


" Required:
set runtimepath^=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.config/nvim/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add plugins
call dein#add('Shougo/vimproc', {'build': 'make'})
call dein#add('Shougo/neosnippet.vim', {'depends': 'Shougo/neosnippet-snippets'})
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/deoplete.nvim')
call dein#add('zchee/deoplete-go', {'build': 'make'})
call dein#add('itchyny/lightline.vim')
call dein#add('ryanoasis/vim-devicons', {'depends': 'itchyny/lightline.vim'})
" call dein#add('mhartington/oceanic-next')
call dein#add('slimv.vim')

call dein#add('tpope/vim-surround')

call dein#add('chriskempson/base16-vim')
call dein#add('NLKNguyen/papercolor-theme')
call dein#add('exitface/synthwave.vim')

call dein#add(g:opamshare . "/merlin/vim", {'lazy': 1, 'on_ft': 'ocaml', 'on_event': 'InsertEnter'})
call dein#add(g:opamshare . "/ocp-indent/vim", {'lazy': 1, 'on_ft': 'ocaml'})

" call dein#add('Shougo/unite.vim')
call dein#add('Shougo/denite.nvim')
" call dein#add('Shougo/vimfiler.vim')
" call dein#add('justinmk/vim-dirvish')
call dein#add('scrooloose/nerdtree', {'depends': 'ryanoasis/vim-devicons'})
call dein#add('Xuyuanp/nerdtree-git-plugin', {'depends': 'scrooloose/nerdtree'})
call dein#add('tiagofumo/vim-nerdtree-syntax-highlight', {'depends': 'scrooloose/nerdtree'})
" let g:vimfiler_as_default_explorer = 1

call dein#add('rust-lang/rust.vim')
call dein#add('racer-rust/vim-racer')

" html5
call dein#add('mattn/emmet-vim')

call dein#add('guns/vim-clojure-static')
call dein#add('kien/rainbow_parentheses.vim')
call dein#add('tpope/vim-fireplace')
call dein#add('tpope/vim-classpath')

call dein#add('whatyouhide/vim-gotham')
call dein#add('tomasr/molokai')

call dein#add('neilagabriel/vim-geeknote')

call dein#add('othree/yajs.vim')
call dein#add('othree/es.next.syntax.vim')

call dein#add('scrooloose/syntastic')
call dein#add('pmsorhaindo/syntastic-local-eslint.vim')
let g:syntastic_javascript_checkers=['eslint']

call dein#add('vim-jp/cpp-vim')
call dein#add('thinca/vim-quickrun')
call dein#add('kana/vim-altr')

call dein#add('fatih/vim-go')
let g:go_fmt_command = "goimports"

" Japanese input method SKK
call dein#add('tyru/eskk.vim')

call dein#add('mileszs/ack.vim')

call dein#add('othree/html5.vim')
call dein#add('hokaccha/vim-html5validator')
call dein#add('hail2u/vim-css3-syntax')

" Elm
call dein#add('elmcast/elm-vim')

call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')
call dein#add('mattn/webapi-vim')
call dein#add('mattn/gist-vim', {'depends': 'mattn/webapi-vim'})

" Convinient
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('kana/vim-submode')

" Required:
call dein#end()

" Required:
filetype plugin indent on

if dein#check_install(['vimproc'])
	call dein#install(['vimproc'])
endif

if dein#check_install()
	call dein#install()
endif


syntax enable
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set t_Co=256
set number
set synmaxcol=200
set laststatus=2
set lazyredraw
set ttyfast
"set background=light
set background=dark
highlight Normal ctermbg=none
"colorscheme OceanicNext
"colorscheme molokai
"colorscheme PaperColor
colorscheme synthwave
"let g:molokai_original = 1
"let g:rehash256 = 1
"if filereadable(expand("~/.vimrc_background"))
"	let base16colorspace=256
"	source ~/.vimrc_background
"endif

if has('termguicolors')
	set termguicolors
else
	let g:synthwave_termcolors=256
endif

let &colorcolumn=join(range(81,100),",")
hi LineNr ctermbg=254

hi IndentGuidesOdd ctermbg=254
hi IndentGuidesEven ctermbg=253

if executable('ag')
	let g:ackprg = 'ag --vimgrep'
endif

let g:eskk#directory = "~/.eskk"
let g:eskk#dictionary = { 'path': "~/.skk-jisho", 'sorted': 0, 'encoding': 'utf-8', }
let g:eskk#large_dictionary = { 'path': "/usr/share/skk/SKK-JISYO.L", 'sorted': 1, 'encoding': 'euc-jp', }
set imdisable
map! <Nul> <Plug>(eskk:toggle)

" Settings for Lightline
filetype off
set rtp+=~/.config/nvim/dein/repos/github.com/itchyny/lightline.vim
filetype plugin indent on
set laststatus=2
set noshowmode
let g:lightline = {
			\'colorscheme': 'synthwave',
			\'enable': { 'tabline': 1 },
			\'mode_map': {'c': 'NORMAL'},
			\'active': {
			\	'left': [
			\		['mode', 'paste'],
			\		['fugitive', 'gitgutter', 'filename'],
			\	],
			\	'right': [
			\		['lineinfo', 'syntastic'],
			\		['percent'],
			\		['fileformart', 'fileencoding', 'filetype'],
			\	]
			\},
			\'component_function': {
			\	'modified': 'MyModified',
			\ 'readonly': 'MyReadOnly',
			\ 'fugitive':	'MyFugitive',
			\	'filename':	'MyFilename',
			\ 'fileformat': 'MyNERDFileformat',
			\ 'filetype':	'MyNERDFiletype',
			\	'fileencoding': 'MyFileencoding',
			\	'mode': 'MyMode',
			\	'syntastic': 'SyntasticStatuslineFlag',
			\	'charcode': 'MyCharCode',
			\	'gitgutter': 'MyGitGutter',
			\},
			\	'separator': {'left': "\u2b80", 'right': "\u2b82"},
			\	'subseparator': {'left': "\u2b81", 'right': "\u2b83"}
			\}

function! MyModified()
	return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
	return &ft !~? 'help\|vimfiler\|gundo' && &ro ? '⭤' : ''
endfunction

function! MyFilename()
	return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
				\ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
				\  &ft == 'unite' ? unite#get_status_string() :
				\  &ft == 'vimshell' ? substitute(b:vimshell.current_dir,expand('~'),'~','') :
				\ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
				\ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
	try
		if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
			let _ = fugitive#head()
			return strlen(_) ? '⭠ '._ : ''
		endif
	catch
	endtry
	return ''
endfunction

function! MyFileformat()
	return winwidth('.') > 70 ? &fileformat : ''
endfunction

function! MyNERDFileformat()
	return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! MyFiletype()
	return winwidth('.') > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyNERDFiletype()
	return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileencoding()
	return winwidth('.') > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
	return winwidth('.') > 60 ? lightline#mode() : ''
endfunction

function! MyGitGutter()
	if ! exists('*GitGutterGetHunkSummary')
				\ || ! get(g:, 'gitgutter_enabled', 0)
				\ || winwidth('.') <= 90
		return ''
	endif
	let symbols = [
				\ g:gitgutter_sign_added . ' ',
				\ g:gitgutter_sign_modified . ' ',
				\ g:gitgutter_sign_removed . ' '
				\ ]
	let hunks = GitGutterGetHunkSummary()
	let ret = []
	for i in [0, 1, 2]
		if hunks[i] > 0
			call add(ret, symbols[i] . hunks[i])
		endif
	endfor
	return join(ret, ' ')
endfunction

" https://github.com/Lokaltog/vim-powerline/blob/develop/autoload/Powerline/Functions.vim
function! MyCharCode()
	if winwidth('.') <= 70
		return ''
	endif

	" Get the output of :ascii
	redir => ascii
	silent! ascii
	redir END

	if match(ascii, 'NUL') != -1
		return 'NUL'
	endif

	" Zero pad hex values
	let nrformat = '0x%02x'

	let encoding = (&fenc == '' ? &enc : &fenc)

	if encoding == 'utf-8'
		" Zero pad with 4 zeroes in unicode files
		let nrformat = '0x%04x'
	endif

	" Get the character and the numeric value from the return value of :ascii
	" This matches the two first pieces of the return value, e.g.
	" "<F>  70" => char: 'F', nr: '70'
	let [str, char, nr; rest] = matchlist(ascii, '\v\<(.{-1,})\>\s*([0-9]+)')

	" Format the numeric value
	let nr = printf(nrformat, nr)

	return "'". char ."' ". nr
endfunction

let g:airline_powerline_fonts = 1
set guifont=InconsolataForPowerline\ Nerd\ Font\ Medium\ 10

if !has('gui_running')
	set t_Co=256
endif

let g:gitgutter_highlight_lines = 1
set updatetime=250

let g:NERDTreeIndicatorMapCustom = {
			\ "Modified"  : "✹",
			\ "Staged"    : "✚",
			\ "Untracked" : "✭",
			\ "Renamed"   : "➜",
			\ "Unmerged"  : "═",
			\ "Deleted"   : "✖",
			\ "Dirty"     : "✗",
			\ "Clean"     : "✔︎",
			\ "Unknown"   : "?"
			\ }

let g:NERDTreeDirArrows = 1
let NERDTreeWinSize=22

" vim-devicons
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" dir-icons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsDefaultFolderOpenSymbol = ''
" file-icons
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['txt'] = ''

function! StrTrim(txt)
	return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

" Elm
let g:elm_format_autosave = 1
let g:elm_make_output_file = "elm.js"

let g:quickrun_config = get(g:, 'quickrun_config', {})
let g:quickrun_config.cpp = {
			\ 'command' : 'g++',
			\ 'cmdopt' : '-std=c++1y -Wall -Wextra',
			\ }
augroup cpp-path
	autocmd!
	autocmd FileType cpp setlocal path=.,/usr/include,/usr/local/include
augroup END

" Settings for syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive',
			\ 'active_filetypes': ['javascript'],
			\ 'passive_filetypes': [] }
let g:elm_syntastic_show_warnings = 1

if executable("clang++")
	let g:syntastic_cpp_compiler = 'g++'
	let g:syntastic_cpp_compiler_options = '-std=c++1y -Wall -Wextra'
endif

let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<C-n>" :
			\ neosnippet#expandable_or_jumpable() ?
			\    "\<Plug>(neosnippet_expand_or_jump)" : "\<tab>"
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
if has('conceal')
	set conceallevel=2 concealcursor=niv
endif
" Settings for golang
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

" Settings for SLIMV
let g:slimv_swank_cmd='! xterm -e ros run --load ~/.roswell/lisp/swank/2016.10.31/start-swank.lisp &'
let g:slimv_lisp="ros -Q run"
let g:slimv_impl="sbcl"
let g:slimv_browser_cmd="lynx"
let g:slimv_repl_split=2
let g:slimv_indent_keylists=1
let g:slimv_leader='\'
let g:paredit_mode=1
let g:paredit_electric_return = 0
let g:paredit_leader='`'
let g:lisp_rainbow=1

function! s:generate_lisp_tags()
	let g:slimv_ctags =  'ctags -a -f '.$HOME.'/.config/nvim/tags/lisp.tags '.expand('%:p').' --language-force=Lisp'
	call SlimvGenerateTags()
endfunction
command! -nargs=0 GenerateLispTags call <SID>generate_lisp_tags()

function! s:generate_lisp_tags_recursive()
	let g:slimv_ctags =  'ctags -a -f '.$HOME.'/.config/nvim/tags/lisp.tags -R '.expand('%:p:h').' --language-force=Lisp'
	call SlimvGenerateTags()
endfunction
command! -nargs=0 GenerateLispTagsRecursive call <SID>generate_lisp_tags_recursive()


" Settings for rustfmt
let g:rustfmt_autosave = 1
let g:rustfmt_command = '$HOME/.cargo/bin/rustfmt'

" Settings for racer
set hidden
let g:racer_cmd = '/usr/bin/racer'
let $RUST_SRC_PATH="/usr/local/src/rustc-1.7.0/src"

" Settings for ocaml
let g:syntastic_ocaml_checkers = ['merlin']
function! s:ocaml_format()
	let now_line = line('.')
	exec ':%! ocp-indent'
	exec ':' . now_line
endfunction
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.ocaml = '[^,;\t\[()\]]'

augroup ocaml_format
	autocmd!
	autocmd BufWrite,FileWritePre,FileAppendPre *.mli\= call s:ocaml_format()
augroup END

" Denite settings
call denite#custom#var('file_rec', 'command',
			\ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#var('grep', 'separator', [])
call denite#custom#var('grep', 'default_opts',
			\ ['--nocolor', '--nogroup'])

set showcmd
set tabstop=2
set shiftwidth=2
set softtabstop=2
set incsearch
set hlsearch
set ignorecase
set smartcase
set wrapscan
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare

augroup filetypedetect
	au BufRead,BufNewFile *.ml setlocal tabstop=4 shiftwidth=4 softtabstop=4
augroup END

nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Denite tab<CR>
nnoremap sn gt
nnoremap np gT
nnoremap s= <C-w>=
nnoremap sO <C-w>=
nnoremap <F8> :Geeknote<cr>
nnoremap <F10> :NERDTree<Enter>
nnoremap <Leader>a <Plug>(altr-forward)

nnoremap <silent> <C-u><C-f> :<C-u>Denite file_rec<CR>
nnoremap <silent> <C-u><C-g> :<C-u>Denite grep<CR>
nnoremap <silent> / :<C-u>Denite line<CR>
nnoremap sB :<C-u>Denite buffer -buffer-name=file<CR>

nnoremap <ESC><ESC> :nohlsearch<CR><ESC>
nnoremap PP "Op
nnoremap x "_x
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
runtime SmartCorrespond.vim
call SmartCorrespond('"', '"')
call SmartCorrespond('(', ')')
"call SmartCorrespond("'", "'")
call SmartCorrespond("'", "'")
call SmartCorrespond('[', ']')
call SmartCorrespond('{', '}')

call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')

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
