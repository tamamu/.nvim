
let g:cache_home = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let g:config_home = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME

if &compatible
  set nocompatible
endif

augroup MyAutoCmd
  autocmd!
augroup END

let s:dein_cache_dir = g:cache_home . '/dein'
let s:dein_repo_dir = s:dein_cache_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !=# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

let g:dein#install_max_processes = 16
let g:dein#install_progress_type = 'echo'
let g:dein#install_message_type = 'echo'
let g:dein#enable_notification = 1
let g:dein#install_process_timeout = 300

if dein#load_state(s:dein_cache_dir)
  call dein#begin(s:dein_cache_dir)

  "call dein#add(s:dein_repo_dir)

  """""" Dark Power
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/denite.nvim')
  """"""""""

  """"""" Matcher
  """ for CtrlP (fuzzy finder)
  " yay -S boost cmake
  " cd ~/.config/dein/repos/nixprime/cpsm && PY3=ON ./install.sh
  call dein#add('nixprime/cpsm') " matcher for denite
  """"""""""

  """"""" Formatter
  """ for clang-format
  " yay -S clang
  call dein#add('rhysd/vim-clang-format')
  """ for racer (Rust formatter)
  " rustup toolchain add nightly
  " cargo +nightly install racer
  " rustup component add rust-src
  " export RUST_SRC_PATH
  call dein#add('racer-rust/vim-racer')
  """ for prettier
  call dein#add('prettier/vim-prettier', {
        \ 'build': 'yarn install'
        \ })
  """"""""""

  """"""" Language Support
  """ HTML5
  call dein#add('othree/html5.vim')
  """ Pug (indent based HTML template engine)
  call dein#add('digitaltoad/vim-pug')
  """ Vue.js
  call dein#add('posva/vim-vue')
  """ Rust
  call dein#add('rust-lang/rust.vim')
  """ Elixir
  call dein#add('elixir-editors/vim-elixir')
  """ Dart
  call dein#add('dart-lang/dart-vim-plugin')
  """ TypeScript
  call dein#add('leafgarland/typescript-vim')
  """ PureScript
  call dein#add('purescript-contrib/purescript-vim')
  """ JSX
  call dein#add('peitalin/vim-jsx-typescript')
  """ TeX
  call dein#add('lervag/vimtex')
  """ Asciidoc
  call dein#add('habamax/vim-asciidoctor')
  """ Natural Language
  call dein#add('rhysd/vim-grammarous')
  """ Doxygen
  call dein#add('vim-scripts/DoxygenToolkit.vim')
  """ Common Lisp
  call dein#add('vlime/vlime', {'rtp': 'vim/'})
  """ Wasm
  call dein#add('rhysd/vim-wasm')
  """"""""""

  """""" Look and Feel
  """ Icons for neardtree
  call dein#add('ryanoasis/vim-devicons')
  """ Lightline
  call dein#add('itchyny/lightline.vim')
  """ Lightline config
  call dein#add('delphinus/lightline-delphinus')
  """ Syntax highlight for nerdtree
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  """ Lightline theme generator for collaboration with tmux
  call dein#add('edkolev/tmuxline.vim')
  """ Set colorscheme on each tabs (Tcolorscheme command)
  call dein#add('ujihisa/tabpagecolorscheme')
  """ Colorscheme
  call dein#add('NLKNguyen/papercolor-theme')
  """ Colorscheme
  call dein#add('rakr/vim-one')
  """ Show cursor jumping
  call dein#add('edluffy/specs.nvim')
  """"""""""

  """""" Editor Feature
  """ Show git diff
  call dein#add('airblade/vim-gitgutter')
  """ File manager
  call dein#add('scrooloose/nerdtree')
  """ Easy comment key bindings
  call dein#add('scrooloose/nerdcommenter')
  """ [UNMAINTAINED] LLDB Neovim Frontend
  " call dein#add('dbgx/lldb.nvim')
  """ Close corresponds symbol
  " call dein#add('jiangmiao/auto-pair')
  """ Expand snippet
  call dein#add('SirVer/ultisnips')
  """ Expand abbreviations of HTML (Suggestion: snippets for Ultisnips)
  call dein#add('mattn/emmet-vim')
  """ Multiple cursors like Sublime Text
  call dein#add('terryma/vim-multiple-cursors')
  """ Zen mode
  call dein#add('junegunn/goyo.vim')
  """ QuickRun command
  call dein#add('thinca/vim-quickrun')
  """ SKK (Input Method Engine)
  call dein#add('tyru/eskk.vim')
  """ Session file
  " call dein#add('tpope/vim-obsession')
  """ LSP client
  call dein#add('w0rp/ale')
  """ LSP client
  call dein#add('autozimu/LanguageClient-neovim', {
        \ 'rev': 'next',
        \ 'build': 'bash install.sh',
        \ })
  """ EasyMotion like jump
  call dein#add('phaazon/hop.nvim', { 'rev': 'pre-extmarks'  })
  """ Edit S-expression easily
  call dein#add('eraserhd/parinfer-rust', { 'build': 'cargo build --release' })
  """ Show keybindings in popup
  call dein#add('liuchengxu/vim-which-key')
  """"""""""

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if has('vim_starting') && dein#check_install()
  call dein#install()
endif

