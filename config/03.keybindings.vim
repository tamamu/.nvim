

let mapleader = " "
map <leader>r :source ~/.config/nvim/init.vim<CR>

" ESCをマップ
inoremap <C-h> <esc>
vnoremap <C-h> <esc>

" ;でコマンドモード
nnoremap ; :

" 移動に関する操作をDvorak=>Qwertyにマップ
noremap h h
noremap H ^
noremap t gj
noremap T J
noremap n gk
noremap N K
noremap s l
noremap S $
noremap , w
noremap < W
noremap . e

" 入力中のカーソル操作
inoremap <s-left> <esc>^i
inoremap <s-right> <esc>$a

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

" 一文字削除でレジスタに保存しない
nnoremap x "_x

" 全選択コピー
nnoremap <C-a> ggVGy<C-o><C-o>

" 貼り付け
nnoremap <expr><silent> p getregtype() ==# 'V' ? 'p' : 'P'
nnoremap <expr><silent> P getregtype() ==# 'V' ? 'P' : 'p'

" 改行
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j

" 補完
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" スペルチェック
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" keybindings for language client
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> gs :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> gf :call LanguageClient_textDocument_codeAction()<CR>

" ALE
nmap <F8> <Plug>(ale_fix)

" TODO FIXME をquickfixで一覧
command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw
