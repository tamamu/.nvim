let g:LanguageClient_serverCommands = {
            \ 'rust': ['rustup', 'run', 'nightly-2018-12-06', 'rls'],
            \ 'typescript': ['typescript-language-server', '--stdio'],
            \ 'cpp': ['clangd'],
            \ 'python': ['pyls'],
            \ 'elixir': ['~/Tutorial/elixir-ls/release/language_server.sh'],
            \ }
let g:LanguageClient_autoStart = 1
"let g:LanguageClient_rootMarkers = {
"            \ 'rust': ['Cargo.toml'],
"            \ 'typescript': ['tsconfig.json']
"            \ }

"set completefunc=LanguageClient#complete
"set formatexpr=LanguageClient_textDocument_rangeFormatting()

"let g:LanguageClient_loadSettings = 1
