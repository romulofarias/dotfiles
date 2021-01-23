" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Comments
    Plug 'tpope/vim-commentary'
    " Change dates fast
    Plug 'tpope/vim-speeddating'
    " Convert binary, hex, etc..
    Plug 'glts/vim-radical'
    " Repeat stuff
    Plug 'tpope/vim-repeat'
    " Text Navigation
    Plug 'unblevable/quick-scope'
    " Useful for React Commenting
    Plug 'suy/vim-context-commentstring'
    " highlight all matches under cursor
    " Plug 'RRethy/vim-illuminate'

  if exists('g:vscode')
    " Easy motion for VSCode
    " Plug 'asvetliakov/vim-easymotion'
    Plug 'ChristianChiarulli/vscode-easymotion'
    Plug 'machakann/vim-highlightedyank'
  else

    " Easymotion
    Plug 'easymotion/vim-easymotion'
    " Surround
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-unimpaired' "navegar entre buffers com ]b, [b, ]B, [B
    Plug 'kana/vim-textobj-entire' "permite operar no arquivo inteiro de qq posicao"
    " Have the file system follow you around
    Plug 'airblade/vim-rooter'
    " auto set indent settings
    Plug 'tpope/vim-sleuth'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    "---Checagem de sintaxe multilinguagem
    Plug 'scrooloose/syntastic'
    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/playground'
    " Cool Icons
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Themes
    " Plug 'christianchiarulli/nvcode-color-schemes.vim'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    if has('nvim') " async frameworks completion
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif
    " Completion from other opened files
    Plug 'Shougo/context_filetype.vim'
    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'edkolev/tmuxline.vim' "Statusbar like vim-airline
    Plug 'glepnir/galaxyline.nvim'
    Plug 'kevinhwang91/rnvimr'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
    Plug 'junegunn/fzf.vim'
    " Plug 'kien/ctrlp.vim' "FuzzyFinder muito bom e intuitivo
    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'rhysd/git-messenger.vim'
    " Terminal
    Plug 'voldikss/vim-floaterm'
    " Start Screen
    Plug 'mhinz/vim-startify'
    " Vista
    Plug 'liuchengxu/vista.vim'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Zen mode
    Plug 'junegunn/goyo.vim'
    " Snippets
    "Plug 'SirVer/ultisnips' "(Usando agora neosnippet.vim)
    "Plug 'Shougo/neosnippet.vim'
    "Plug 'Shougo/neosnippet-snippets'
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
    Plug 'othree/html5.vim'
    Plug 'majutsushi/tagbar' "Mostra tags em uma janela, ordenadas pelo escopo
    " Interactive code
    Plug 'metakirby5/codi.vim'
    " Better tabline
    Plug 'romgrk/barbar.nvim'
    " undo time travel
    Plug 'mbbill/undotree'
    " Find and replace
    Plug 'ChristianChiarulli/far.vim'
    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'
    " live server
    Plug 'turbio/bracey.vim'
    " Smooth scroll
    Plug 'psliwka/vim-smoothie'
    " " async tasks
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
    " Swap windows
    Plug 'wesQ3/vim-windowswap'
    " Markdown Preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
    " Easily Create Gists
    Plug 'mattn/vim-gist'
    Plug 'mattn/webapi-vim'
    " Colorizer
    Plug 'morhetz/gruvbox' " Colorscheme
    "Plug 'crusoexia/vim-monokai' " Colorscheme
    "Plug 'skielbasa/vim-material-monokai' " Colorscheme
    "Plug 'atelierbram/Base2Tone-vim' " Colorscheme
    " Plug 'norcalli/nvim-colorizer.lua'
    " Intuitive buffer closing
    Plug 'moll/vim-bbye'
    " Debugging
    Plug 'puremourning/vimspector'
    Plug 'szw/vim-maximizer'
    " Neovim in Browser
    Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
    " Rainbow brackets
    " Plug 'luochen1990/rainbow', {'for': ['c', 'python', 'java', 'vim', 'bash', 'javascript', 'vue']}
    " Async Linting Engine
    " TODO make sure to add ale config before plugin
    " Plug 'dense-analysis/ale'
    " Plug 'w0rp/ale' "{ TODO: 'pip install flake8 isort yapf' }
    " Better Whitespace
    " Plug 'ntpeters/vim-better-whitespace'
    " Multiple Cursors
    " TODO add this back in change from C-n
    " Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    " Plug 'yuezk/vim-js'
    " Plug 'maxmellon/vim-jsx-pretty'
    " Plug 'jelera/vim-javascript-syntax'
    " Plugin Graveyard
    " Latex
    " Plug 'lervag/vimtex' 

    " Debug
    " Plug 'mfussenegger/nvim-dap'
    " Plug 'nvim-dap-virtual-text'
    " Sneak
    " Plug 'justinmk/vim-sneak'
    " Plug 'nvim-treesitter/nvim-treesitter-refactor'
    " Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    " Plug 'romgrk/nvim-treesitter-context'
    " Minimap
    " Plug 'wfxr/minimap.vim'
    " jsx syntax support
    " Typescript syntax
    " Plug 'HerringtonDarkholme/yats.vim'
    " Multiple Cursors
    Plug 'terryma/vim-multiple-cursors'
    " Plug 'kaicataldo/material.vim'
    " Plug 'tomasiser/vim-code-dark'
    " Plug 'mg979/vim-xtabline'
    " Files and Directories Explorer 
    Plug 'scrooloose/nerdtree' 
    " Plug 'tpope/vim-eunuch'
    " Vim Wiki
    " Plug 'https://github.com/vimwiki/vimwiki.git'
    " Better Comments
    " Plug 'jbgutierrez/vim-better-comments'
    " Echo doc
    " Plug 'Shougo/echodoc.vim'
    " Plug 'hardcoreplayers/spaceline.vim'
    " Ranger
    " Plug 'francoiscabrol/ranger.vim'
    " Plug 'rbgrouleff/bclose.vim'
    " Making stuff
    " Plug 'neomake/neomake'
    " Plug 'mhinz/vim-signify'
    " Plug 'preservim/nerdcommenter'
    " Plug 'brooth/far.vim'
    " Plug 'atishay/far.vim'
    " Plug 'romgrk/lib.kom'
    " ZoomWin: Zooms Window in and out "
    " Plug 'regedarek/ZoomWin'
    " Debugging
  endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
