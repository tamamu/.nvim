

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

syntax on

set ruler

set encoding=utf-8
scriptencoding utf-8

" 行番号表示
set number
" 行折り返さない
set nowrap
" 編集行ハイライト
set cursorline
" 対応括弧ハイライト
set showmatch
" 不可視文字置き換え
set list
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮
" バックアップしない
set nobackup
filetype indent plugin on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
" タブを空白スペースに
set expandtab
" backspaceで削除可能なもの
set backspace=indent,eol,start
" 行を跨ぐ移動を許可
set whichwrap=b,s,h,l,<,>,[,]
set hlsearch
set incsearch
set inccommand=nosplit
set clipboard=unnamed,unnamedplus
set mouse=a mousemodel=popup
" ディレクトリ区切りを/に
set shellslash
" ファイル名補完の設定
set wildmenu wildmode=list:longest,full
set history=100
set visualbell t_vb=
set noerrorbells
" スペルチェック
setlocal spell
set spelllang=en,cjk

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("nvim"))
"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

set background=dark
colorscheme one
