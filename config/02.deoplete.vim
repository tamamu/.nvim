" deoplete options
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option({
      \ 'smart_case': v:true,
      \ 'auto_complete_delay': 0,
      \ 'auto_complete_start_length': 1,
      \ 'camel_case': 0,
      \ 'ignore_case': 0,
      \ 'refresh_always': 0,
      \ })
" let g:deoplete#enable_smart_case = 1
" let g:deoplete#auto_complete_delay = 0
" let g:deoplete#auto_complete_start_length = 1
" let g:deoplete#enable_camel_case = 0
" let g:deoplete#enable_ignore_case = 0
" let g:deoplete#enable_refresh_always = 0
call deoplete#custom#var('file', 'enable_buffer_path', 1)
let g:deoplete_max_list = 10000

" disable autocomplete by default
"let b:deoplete_disable_auto_complete=1
"let g:deoplete_disable_auto_complete=1

"call deoplete#custom#source('LanguageClient',
"            \ 'min_pattern_length',
"            \ 2)
"
"if !exists('g:deoplete#omni#input_patterns')
"    let g:deoplete#omni#input_patterns = {}
"endif
"
"" Disable the candidates in Comment/String syntaxes.
"call deoplete#custom#source('_',
"            \ 'disabled_syntaxes', ['Comment', 'String'])
"
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"
"call deoplete#custom#option('sources', {
"            \ 'python': ['LanguageClient'],
"            \ 'python3': ['LanguageClient'],
"            \ 'cpp': ['LanguageClient'],
"            \ 'c': ['LanguageClient'],
"            \ 'rust': ['LanguageClient'],
"            \ 'vim': ['vim'],
"            \})
"
"" ignored sources
"let g:deoplete#ignore_sources = {}
"let g:deoplete#ignore_sources._ = ['buffer', 'around']
