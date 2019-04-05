let g:LanguageClient_serverCommands = {
            \ 'rust': ['rustup', 'run', 'nightly-2018-12-06', 'rls'],
            \ 'typescript': ['typescript-language-server', '--stdin'],
            \ 'cpp': ['clangd'],
            \ }
let g:LanguageClient_autoStart = 1
"let g:LanguageClient_rootMarkers = {
"            \ 'rust': ['Cargo.toml'],
"            \ 'typescript': ['tsconfig.json']
"            \ }

"set completefunc=LanguageClient#complete
"set formatexpr=LanguageClient_textDocument_rangeFormatting()

"let g:LanguageClient_loadSettings = 1
