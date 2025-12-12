let g:LanguageClient_serverCommands = {
            \ 'rust': ['ra_lsp_server'],
            \ 'javascript': ['typescript-language-server', '--stdio'],
            \ 'typescript': ['typescript-language-server', '--stdio'],
            \ 'typescript.tsx': ['typescript-language-server', '--stdio'],
            \ 'purescript': ['purescript-language-server', '--stdio'],
            \ 'cpp': ['clangd'],
            \ 'python': ['pyls'],
            \ 'dart': ['dart_language_server'],
            \ 'go': ['gopls'],
            \ 'elixir': ['/home/cddadr/Projects/github.com/elixir-lsp/elixir-ls/rel/language_server.sh']
            \ }
let g:LanguageClient_autoStart = 1
let g:LanguageClient_selectionUI = 'quickfix'
let g:LanguageClient_diagnosticsList = 'Quickfix'
let g:LanguageClient_rootMarkers = {
            \ 'elixir': ['mix.exs'],
            \ 'purescript': ['spago.dhall']
            \ }

"            \ 'rust': ['Cargo.toml'],
"            \ 'typescript': ['tsconfig.json']
"set completefunc=LanguageClient#complete
"set formatexpr=LanguageClient_textDocument_rangeFormatting()

"let g:LanguageClient_loadSettings = 1
