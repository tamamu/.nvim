" Disable completion where available from ALE
" (not worth creating a separate file just for a one-liner)
let g:ale_completion_enabled = 1

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 1

let g:ale_sign_warning = '--'

let g:ale_rust_rls_config = {
  \ 'rust': {
  \   'clippy_preference': 'on'
  \   }
  \ }
