" Disable completion where available from ALE
" (not worth creating a separate file just for a one-liner)
let g:ale_completion_enabled = 0

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
