" set leader key
let g:mapleader = "\\"

"vmap <up> gk
"vmap <down> gj
" normal mode...
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
" Better nav for omnicomplete
"inoremap <expr> <c-j> ("\<C-n>")
"inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
"inoremap jk <Esc>
"inoremap kj <Esc>

" Easy CAPS
" inoremap <c-u> <ESC>viwUi
" nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
"nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
"nnoremap <S-TAB> :bprevious<CR>

" Cria uma tab
nmap <leader>te :tabe<CR>
" Alternate way to save
nnoremap <silent><C-s> :<C-u>update<CR>
vnoremap <silent><C-s> <C-c>:update<CR>gv
inoremap <silent><C-s> <C-o>:update<CR>
" Alternate way to quit
nnoremap <leader>Q :wq!<CR>
" Use control-c instead of escape
"nnoremap <C-c> <Esc>

" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <silent><expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" Espaço para abrir/fechar dobras
" Space to toggle folds.
"nnoremap <Space> za
"vnoremap <Space> za

" Para editar init.vim em uma janela ao lado (split)
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
" Para carregar o init.vim sem precisar fechar e abrir novamente o nvim
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

" NerdTree
nnoremap <F9> :NERDTreeToggle<cr>
