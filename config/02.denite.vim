" Define mappings
nnoremap [denite] <Nop>
nmap <C-c> [denite]

nnoremap <silent> [denite]f :<C-u>DeniteBufferDir -start-filter file file:new<CR>
nnoremap <silent> [denite]r :<C-u>Denite -start-filter -vertical-preview file/rec<CR>
nnoremap <silent> [denite]l :<C-u>Denite -start-filter line<CR>
nnoremap <silent> [denite]g :<C-u>DeniteProjectDir -buffer-name=grep -start-filter grep:::!<CR>


autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

if executable('rg')
  call denite#custom#var('grep', 'command', ['rg'])
  call denite#custom#var('grep', 'default_opts',
			\ ['-i', '--vimgrep', '--no-heading'])
	call denite#custom#var('grep', 'recursive_opts', [])
	call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
	call denite#custom#var('grep', 'separator', ['--'])
	call denite#custom#var('grep', 'final_opts', [])
endif
call denite#custom#option('default', 'matcher', 'matcher/cpsm')
call denite#custom#var('file/rec', 'matchers', ['matcher/cpsm', 'matcher_ignore_globs'])
call denite#custom#var('grep', 'matcher', ['matcher/cpsm', 'matcher_ignore_globs'])
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
  \ [
  \ '.git/',
  \ 'build/',
  \ 'target/',
  \ '__pycache__/',
  \ 'images/',
  \ '*.o',
  \ '*.make',
  \ '*.min.*',
  \ 'img/',
  \ 'fonts/',
  \ ])
