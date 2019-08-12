
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

  call dein#add('Shougo/deoplete.nvim')
  call dein#add('tpope/vim-obsession')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('delphinus/lightline-delphinus') "Lightline config
  call dein#add('itchyny/lightline.vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('thinca/vim-quickrun')
  call dein#add('habamax/vim-asciidoctor')
  call dein#add('rakr/vim-one')
  call dein#add('ujihisa/tabpagecolorscheme')
  call dein#add('scrooloose/nerdtree')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('dart-lang/dart-vim-plugin')
  call dein#add('othree/html5.vim')
  call dein#add('digitaltoad/vim-pug')
  call dein#add('posva/vim-vue')
  call dein#add('rust-lang/rust.vim')
  call dein#add('elixir-editors/vim-elixir')
  call dein#add('racer-rust/vim-racer')
  call dein#add('dbgx/lldb.nvim')
  "call dein#add('sebastianmarkow/deoplete-rust')
  call dein#add('junegunn/goyo.vim')
  call dein#add('mattn/emmet-vim')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('peitalin/vim-jsx-typescript')
  call dein#add('rhysd/vim-grammarous')
  call dein#add('lervag/vimtex')
  call dein#add('SirVer/ultisnips')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('edkolev/tmuxline.vim')
  call dein#add('NLKNguyen/papercolor-theme')
  call dein#add('w0rp/ale')
  call dein#add('autozimu/LanguageClient-neovim', {
        \ 'rev': 'next',
        \ 'build': 'bash install.sh',
        \ })
  call dein#add('tyru/eskk.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if has('vim_starting') && dein#check_install()
  call dein#install()
endif

