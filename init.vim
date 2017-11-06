"               ###    ##  ##      ##  ##  ###    ###
"               ####   ##   ##    ##   ##  ####  ####
"               ## ##  ##    ##  ##    ##  ## #### ##
"               ##  ## ##     ####     ##  ##  ##  ##
"               ##   ####      ##      ##  ##      ##
"
"                     NeoVim settings for Eddie

let g:cache_home = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let g:config_home = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME

" Plugin manager: Dein {{{

if &compatible
	set nocompatible
endif

augroup MyAutoCmd
	autocmd!
augroup END

let s:dein_cache_dir = g:cache_home . '/dein'
let s:dein_repo_dir = s:dein_cache_dir . '/repos/github.com/Shougo/dein.vim'

" Load dein
if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_repo_dir) " Auto Download
		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" Settings for dein
let g:dein#install_max_processes = 16
let g:dein#install_progress_type = 'title'
let g:dein#install_message_type = 'none'
let g:dein#enable_notification = 1
let g:dein#install_process_timeout = 300

" Load plugins repository
if dein#load_state(s:dein_cache_dir)
	call dein#begin(s:dein_cache_dir)

	let s:toml_dir = g:config_home . '/dein'

	call dein#load_toml(s:toml_dir . '/plugins.toml', {'lazy': 0})
	call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})
	if has('nvim')
		call dein#load_toml(s:toml_dir . '/neovim.toml', {'lazy': 1})
	endif

	call dein#end()
	call dein#save_state()
endif

" Install not installed plugins
if has('vim_starting') && dein#check_install()
	call dein#install()
endif

" }}}

" Auto load my config files
runtime! rc/*.vim
