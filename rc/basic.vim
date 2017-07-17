
set encoding=utf-8
scriptencoding utf-8
" Show line number
set number
" Don't wrap line
set nowrap
" Change bgcolor on cursor line
set cursorline
" Highlight correspond surrounding
set showmatch
" Show invisible character
set list
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮
" Don't make swap file
" set noswapfile
" Don't make backup file
set nobackup
" Set indentation
filetype indent on
" Set tab width
set tabstop=2
set shiftwidth=2
set softtabstop=2
" Keep before indent when new line
set autoindent
set smartindent
" Set tab to whitespace
set expandtab
" Set leader key to <space>
let mapleader=" "
map <leader>s :source ~/.config/nvim/init.vim<CR>
" Set backspace
set backspace=indent,eol,start
" Be able to move other line from beginning and end of a line
set whichwrap=b,s,h,l,<,>,[,]
" Better search
set hlsearch
set incsearch
" Incremental replace
set inccommand=nosplit

set clipboard=unnamed,unnamedplus
set mouse=a
set shellslash
set wildmenu wildmode=list:longest,full
set history=100
set visualbell t_vb=
set noerrorbells

inoremap <C-h> <ESC>
nnoremap <F10> :Vaffle<CR>
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sn gt
nnoremap np gT
nnoremap s= <C-w>=
nnoremap sO <C-w>=

nnoremap <silent> <C-u><C-f> :<C-u>Denite file_rec<CR>
nnoremap <silent> <C-u><C-g> :<C-u>Denite grep<CR>
nnoremap <silent> / :<C-u>Denite line<CR>
nnoremap sB :<C-u>Denite buffer -buffer-name=file<CR>

omap ab <Plug>(textobj-multiblock-a)
omap ib <Plug>(textobj-multiblock-i)
vmap ab <Plug>(textobj-multiblock-a)
vmap ab <Plug>(textobj-multiblock-i)


" pretty print lambda
au VimEnter * syntax keyword Statement lambda conceal cchar=λ
au VimEnter * hi! link Conceal Statement
au VimEnter * set conceallevel=2
