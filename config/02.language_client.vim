let g:LanguageClient_serverCommands = {
            \ 'rust': ['rustup', 'run', 'stable', 'rls'],
            \ }
let g:LanguageClient_autoStart = 1
let g:LanguageClient_rootMarkers = {
            \ 'rust': ['Cargo.toml'],
            \ }

set completefunc=LanguageClient#complete
set formatexpr=LanguageClient_textDocument_rangeFormatting()

let g:LanguageClient_loadSettings = 1
