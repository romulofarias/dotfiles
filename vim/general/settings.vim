set nocompatible
filetype plugin indent on
runtime macros/matchit.vim
syntax on                               " Enables syntax highlighing
set background=dark                     " tell vim what the background color looks like
set confirm
set path=.,**
set hidden                              " Required to keep multiple buffers open multiple buffers
set wrap textwidth=100                  " quebra de linha automática na coluna 80
set linebreak
set colorcolumn=+1                      " coluna limite de texto é destacada
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler         		                " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set softtabstop=4                       " Backspace volta 4 espaços numa identação
set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set ttyfast                             " melhora redesenho de janelas
set complete+=kspell
set shortmess+=c
set completeopt=longest,menuone         " Desabilita preview
set spelllang=pt_br,en
set nospell
set history=1000                        " grava 1000 comandos e padrões de busca
set number                              " Line numbers
set relativenumber			            " Line numbers relative to cursorline
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
set showcmd                             " Always show commands
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set noswapfile                          " Sem arquivo swap
set nowritebackup                       " This is recommended by coc
set noerrorbells visualbell t_vb=       " Screen flash in errors
set updatetime=300                      " Faster completion
" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always be the same as your working directory
set hlsearch 				            " Enable highlight search
set incsearch				            " The matched string is highlighted while typing a search command
set ignorecase
set smartcase
set showmatch
set autoread                            " Automatically read a file that has changed on disk
set foldmethod=indent                   " Cria (folders) dobras de código no VIM
set nofoldenable			            " Todas as dobras aperecem abertas.
set foldlevel=2
set wildmode=list:longest,full
set backspace=indent,eol,start          "backspace atua sobre indentação, quebra de linha e início de linha
set undofile
set undoreload=10000
set undodir=~/.cache/vim/undofiles
set title
set diffopt+=vertical
set scrolloff=8                         "número mínimo de linhas acima e abaixo do cursor
set signcolumn=yes                      "coluna para sinalização em lintings
" For conceal markers.
if has('conceal')
   set conceallevel=2 concealcursor=niv
endif

" Configuração para o gvim
if has("gui_running")
   " No toolbar or Menu (someone use it?)
   " set guioptions-=T
   set guioptions-=m
   " No left and right scrollbar
   set guioptions-=r
   set guioptions-=L
   set guifont=mononoki 12
endif

if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  let g:terminal_scrollback_buffer_size=10000
endif

if has('inccommand') "feature neovim
   set inccommand=split
endif

" You can't stop me SAVE AS ROOT
cmap w!! w !sudo tee %

au BufNewFile,BufRead *.py
  \ set tabstop=4
  \     softtabstop=4
  \     shiftwidth=4
  \     textwidth=79

au BufNewFile,BufRead *.md set conceallevel=0                      " So that I can see `` in markdown files
