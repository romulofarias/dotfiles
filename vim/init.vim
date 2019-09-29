let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"let g:python_host_prog = '/usr/bin/python'
"let g:python3_host_prog = '/usr/bin/python3'
"Habilitando o vim-powerline
"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup
call plug#begin('~/.config/nvim/plugged')
" Github Plugins
" Para instalar plugins no vim:
" - abra o vim e execute o comando :PluginInstall
" - direto do terminal execute o comando vim +PluginInstall +qall
Plug 'tpope/vim-fugitive' "integração com git
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
"---Repeat: Repeats motions from surround and others "
Plug 'tpope/vim-repeat'
Plug 'mhinz/vim-signify' "integração com outros versionadores
"-----Melhoramento Visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim' "Statusbar like vim-airline
"---Checagem de sintaxe multilinguagem
Plug 'scrooloose/syntastic'
"----Esquema de cores
"Plug 'crusoexia/vim-monokai' " Esquema de cores
"Plug 'skielbasa/vim-material-monokai' " Esquema de cores
"Plug 'atelierbram/Base2Tone-vim' " Esquema de cores
Plug 'morhetz/gruvbox' " Esquema de cores
"--------------------------------------------------------------------
Plug 'scrooloose/nerdtree' "explorador de diretórios
"--------------------------------------------------------------------
Plug 'terryma/vim-multiple-cursors' "multiplos cursores
Plug 'sheerun/vim-polyglot' "suporte a diversas linguagens

"-----Autocompletar e Snippets Vim
"Plug 'SirVer/ultisnips' "Snippet engine (Usando agora neosnippet.vim)
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" Tell Neosnippet about the other snippets
" "let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
" (honza/vim-snippets)
"Plug 'honza/vim-snippets' "Snippets prontas para usar
" Async autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Completion from other opened files
Plug 'Shougo/context_filetype.vim'
" Python autocompletion
Plug 'zchee/deoplete-jedi'
"Plug 'neovim/python-client'
Plug 'zchee/deoplete-clang'
" Just to add the python go-to-definition and similar features, autocompletion
" from this plugin is disabled
"Plug 'davidhalter/jedi-vim'

" For conceal markers.
if has('conceal')
   set conceallevel=2 concealcursor=niv
endif

"" Autocompletar
"Plug 'ncm2/ncm2'
"" ncm2 requires nvim-yarp
"Plug 'roxma/nvim-yarp'
"" ncm2 for python
"Plug 'ncm2/ncm2-jedi'
"" ncm2 for c/c++
"Plug 'ncm2/ncm2-pyclang'
"let g:ncm2_pyclang#library_path = '/usr/lib/llvm-3.9/lib'

Plug 'w0rp/ale' "{ TODO: 'pip install flake8 isort yapf' }

Plug 'kien/ctrlp.vim' "FuzzyFinder muito bom e intuitivo
"---FuzzyFinder muito bom, mas precisa criar mapeamentos <leader>
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
" Rainbow: Colorize parentheses "
Plug 'luochen1990/rainbow', {'for': ['c', 'python', 'java', 'vim', 'bash', 'javascript', 'vue']}

"-----Latex
Plug 'lervag/vimtex' "Plugin para Latex
"--------------------------------------------------------------------

"Plug 'kh3phr3n/python-syntax', {'for': 'python'}
"Plug 'Vimjas/vim-python-pep8-indent', {'for': 'python'}
"Plugin 'maralla/completor.vim' "Autocompletar somente para python
"Plug 'nvie/vim-flake8' "w0rp/ale usa flake8 também
"Plug 'fisadev/vim-isort', {'for': ['python']} "w0rp/ale usa isort também
"let g:vim_isort_python_version = 'python3'
"--------------------------------------------------------------------

"-----HTML CSS eWeb
Plug 'mattn/emmet-vim' "Plugin para HTML, CSS e Web
Plug 'othree/html5.vim'
Plug 'majutsushi/tagbar' "Mostra tags em uma janela, ordenadas pelo escopo
"--------------------------------------------------------------------

" ZoomWin: Zooms Window in and out "
""""""""""""""""""""""""""""""""""""
Plug 'regedarek/ZoomWin'
call plug#end()

filetype plugin indent on

" ZoomWin
" Mappings just like Terminator
nmap <unique> <leader>z  <Plug>ZoomWin
if has('nvim')
    " removed 'key', 'oft', 'sn', 'tx' options which do not work with nvim
    let g:zoomwin_localoptlist = ["ai","ar","bh","bin","bl","bomb","bt","cfu","ci","cin","cink","cino","cinw","cms","com","cpt","diff","efm","eol","ep","et","fenc","fex","ff","flp","fo","ft","gp","imi","ims","inde","inex","indk","inf","isk","kmp","lisp","mps","ml","ma","mod","nf","ofu","pi","qe","ro","sw","si","sts","spc","spf","spl","sua","swf","smc","syn","ts","tw","udf","wfh","wfw","wm"]
endif
"}}}

" Rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
\    'guifgs': ['#458588', '#b16286', '#cc241d', '#d65d0e', '#458588', '#b16286', '#cc241d', '#d65d0e', '#458588', '#b16286', '#cc241d', '#d65d0e', '#458588', '#b16286', '#cc241d', '#d65d0e'],
\    'ctermfgs': [ 'brown', 'blue', 'gray', 'green', 'cyan', 'red', 'magenta', 'brown', 'gray', 'black', 'magenta', 'blue', 'green', 'cyan', 'red'],
\    'operators': '_,_',
\    'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\    'separately': {
\        '*': {},
\        'tex': {
\            'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\        },
\        'javascript': {
\            'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/'],
\        },
\        'vim': {
\            'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\        },
\        'jinja': {
\            'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\        },
\        'css': 0,
\    }
\}

" Polyglot syntax highlight
" Default highlight is better than polyglot
let g:polyglot_disabled = ['python']
let python_highlight_all = 1

" ncm2 Autocomplete
" enable ncm2 for all buffers
" autocmd BufEnter * call ncm2#enable_for_buffer()
" :help Ncm2PopupOpen for more information

" Deoplete
let g:deoplete#enable_at_startup = 1
" Cicle through mappings with <tab>
let g:deoplete#sources#jedi#enable_cache = 1
let g:deoplete#sources#jedi#show_docstring = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources#clang#libclang_path="/usr/lib/llvm-3.9/lib/libclang.so"
let g:deoplete#sources#clang#clang_header="/usr/lib/llvm-3.9/include"
" complete with words from any opened file
let g:context_filetype#same_filetypes = {}
let g:context_filetype#same_filetypes._ = '_'

inoremap <silent><expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Jedi
"let g:jedi#completions_enable = 0
"let g:jedi#popup_on_dot = 1
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = "<leader>d"
"let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
"let g:jedi#rename_command = "<leader>r"
"let g:jedi#show_call_signatures = "0"
"let g:jedi#completions_command = "<C-space>"
"let g:jedi#smart_auto_mappings = 0
" Go to definition in new tab
"nmap <leader>D :tab split<CR>:call jedi#goto()<CR>

" Ale
let g:ale_fix_on_save = 1
let g:ale_linters ={'python':['flake8']}
let g:ale_fixers = {
\   'python': [
\       'isort',
\       'yapf',
\       'remove_trailing_lines',
\       'trim_whitespace'
\   ]
\}
let g:ale_sign_error = '✗'
"let g:ale_sign_warning = '➧'
let g:ale_sign_warning = 'Δ'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight link ALEErrorSign WarningMsg
highlight link ALEWarningSign ModeMsg

" Airline
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
" Airline with tmuxline
let g:airline#extensions#tmuxline#enabled = 1
let airline#extensions#tmuxline#snapshot_file = "~/.tmux-status.conf"

"Tmuxline preset
let g:tmuxline_preset = {
    \'a'       : '#S',
    \'win'     : ['#I','#W'],
    \'cwin'    : ['#I','#W'],
    \'x'       : '#(date +%Y.%j)',
    \'y'       : ['%Hh%M', '%a', '%d.%b'],
    \'z'       : '#h',
    \'options' : {'status-justify' : 'left'}}

" Configuracao do syntastic
" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" Error symbols syntastic
let g:syntastic_style_error_symbol = "✗"
let g:syntastic_error_symbol = "✗"
let g:syntastic_style_warning_symbol = "Δ"
let g:syntastic_warning_symbol = "Δ"
let g:syntastic_aggregate_errors = 1
let g:syntastic_python_checkers=['python', 'flake8']

" UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger	= "<tab>"
"let g:UltiSnipsJumpForwardTrigger = "<tab>"
"let g:UltiSnipsJumpBackwardTrigger = "<c-b>"
"let g:UltiSnipsRemoveSelectModeMappings = 0
"let g:UltiSnipsExpandTrigger='<tab>'
"let g:UltiSnipsListSnippets='<c-tab>'
"let g:UltiSnipsJumpForwardTrigger='<c-j>'
"let g:UltiSnipsJumpBackwardTrigger='<c-k>'

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit='vertical'

"YouCompleteMe fix message
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<c-b>', '<Up>']
"let g:ycm_complete_in_comments = 1 "Autocompletar também em comentários
"let g:ycm_autoclose_preview_window_after_completion=1

" Configuração para o gvim
if has("gui_running")
   " No toolbar or Menu (someone use it?)
   " set guioptions-=T
   set guioptions-=m
   " No left and right scrollbar
   set guioptions-=r
   set guioptions-=L
   set guifont=Inconsolata\ for\ Powerline\ Medium\ 13
endif

" Usa as definições do vim, não as do vi.
" Habilita todo o potencial e melhorias do vim sobre o vi.
set nocompatible
set t_Co=256
" Habilita autoindentação
set autoindent
" Habilita mostrar os comandos digitados
set showcmd
" Habilita linhas numeradas
set number
set relativenumber
" Habilita coloração
syntax enable
syntax on
" Usa esquema de cores gruvbox
colorscheme gruvbox
set background=dark
"colorscheme Base2Tone_LakeDark
"let g:airline_theme='Base2Tone_LakeDark'
" highlight matching search strings
set hlsearch
" habilita busca incremental
set incsearch
" habilita busca sobre maiúsculas e minúsculas
set ignorecase
" Mostra parenteses, chaves e colchetes que casam entre si
set showmatch
" Mapeamentos de teclas para movimentação
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k
imap <up> <C-O>gk
imap <down> <C-O>gj
nmap <up> gk
nmap <down> gj
vmap <up> gk
vmap <down> gj
set foldmethod=indent "cria (folders) dobras de código no VIM
set nofoldenable
set foldlevel=2
"tecla de espaço para abrir/fechar dobras
nmap <SPACE> za
" Habilita mostrar todas as possibilidades para um determinado comando
set wildmode=list:longest,full
set tabstop=4 " número de colunas para o comando <tab>
set expandtab " tabs são convertidos para espaços
set shiftwidth=4 " quando o autoindent faz um tab, ele é de 4 espaços de tamanho
set softtabstop=4 "Backspace volta 4 espaços numa identação
set backspace=indent,eol,start "backspace atua sobre indentação, quebra de linha e início de linha
set cc=82 " coluna limite de texto é destacada
set wrap textwidth=80 " quebra de linha automática na coluna 80
set fo=ctrjn1q "configura formatação do texto autoindent deve estar ativo
set ttyfast "envia mais caracteres ao terminal, melhora redesenho de  janelas
set history=500 "grava 500 comandos e padrões de busca
set laststatus=2 " Always display the statusline in all windows
set showtabline=2
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set backup
set backupext=.bkp
set noswapfile "Sem arquivo swap
" Em caso de erro, a tela pisca
set visualbell
" destaca a linha onde o cursor está
set cursorline
"Desabilita preview (navegação mais rápida no autocompletar)
set completeopt=longest,menuone,noinsert,noselect
" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10
" Automatically read a file that has changed on disk
set autoread
set hidden
if has('inccommand')
   set inccommand=split
endif
let mapleader="\<space>"
" Para editar init.vim em uma janela ao lado (split)
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
" Para carregar o init.vim sem precisar fechar e abrir novamente o nvim
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>


" " Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-Space> <Plug>(neosnippet_expand_or_jump)
smap <C-Space> <Plug>(neosnippet_expand_or_jump)
xmap <C-Space> <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
