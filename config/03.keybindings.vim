

let mapleader = " "
map <leader>r :source ~/.config/nvim/init.vim<CR>

" ESCをマップ
inoremap <C-h> <esc>
vnoremap <C-h> <esc>

" ;でコマンドモード
nnoremap ; :

" 移動に関する操作をDvorak=>Qwertyにマップ
nnoremap h h
nnoremap H ^
nnoremap t j
nnoremap T J
nnoremap n k
nnoremap N K
nnoremap s l
nnoremap S $
nnoremap , w
nnoremap < W
nnoremap . e

" 候補移動
nnoremap m N
nnoremap z n

" ESCでハイライトを消す
nnoremap <esc><esc> :noh<CR>

" カーソルキー無効化
nnoremap <left> <Nop>
nnoremap <up> <Nop>
nnoremap <down> <Nop>
nnoremap <right> <Nop>

" Exモード無効化
nnoremap Q <Nop>

" ペイン操作
nnoremap <leader>\| :<C-u>vs<CR>
nnoremap <leader>- :<C-u>sp<CR>
nnoremap <leader>q :<C-u>q<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-t> <C-w>j
nnoremap <C-n> <C-w>k
nnoremap <C-s> <C-w>l

" タブ操作
nnoremap <leader>t :<C-u>tabnew<CR>
nnoremap <leader>o gt

" ファイルツリー
noremap <F9> :NERDTreeToggle<CR>
noremap <F10> :NERDTree<CR>
noremap <C-k> :NERDTree<CR>
" close vim if only window left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" 貼り付け
nnoremap <expr><silent> p getregtype() ==# 'V' ? 'p' : 'P'
nnoremap <expr><silent> P getregtype() ==# 'V' ? 'P' : 'p'

" 改行
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j

" 補完
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" keybindings for language client
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> gs :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> gf :call LanguageClient_textDocument_codeAction()<CR>

" ALE
nmap <F8> <Plug>(ale_fix)
