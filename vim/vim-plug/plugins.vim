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
  " Plug 'suy/vim-context-commentstring'
  " highlight all matches under cursor
  " Plug 'RRethy/vim-illuminate'

  " Easymotion
  Plug 'easymotion/vim-easymotion'
  " Surround
  Plug 'tpope/vim-surround'
  " Navegar entre buffers com ]b, [b, ]B, [B
  Plug 'tpope/vim-unimpaired'
  " Permite operar sobre o arquivo inteiro de qq posicao
  " Plug 'kana/vim-textobj-entire' TODO:bug
  " Have the file system follow you around TODO:Testar no futuro
  "Plug 'airblade/vim-rooter'
  " Configura automaticamente identação baseado por outros arquivos do mesmo tipo
  " Plug 'tpope/vim-sleuth'
  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  " Treesitter TODO avaliar futuramente nvim-treesitter
  " Plug 'nvim-treesitter/nvim-treesitter'
  " Plug 'nvim-treesitter/playground'
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'
  " Closetags
  " Plug 'alvan/vim-closetag'
  " Themes
  " Plug 'christianchiarulli/nvcode-color-schemes.vim'
  " Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "if has('nvim') " async frameworks completion
  "    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  "else
  "    Plug 'Shougo/deoplete.nvim'
  "    Plug 'roxma/nvim-yarp'
  "    Plug 'roxma/vim-hug-neovim-rpc'
  "endif
  "Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
  " Completion from other opened files
  " Plug 'Shougo/context_filetype.vim'
  " Status Line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Plug 'edkolev/tmuxline.vim' " Statusbar like vim-airline
  " Plug 'glepnir/galaxyline.nvim' " Requires neovim 5.0+
  " TODO: testar futuramente
  " Plug 'kevinhwang91/rnvimr' " This plugin doesn't support VIM
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
  " Plug 'ctrlpvim/ctrlp.vim' "FuzzyFinder muito bom e intuitivo
  " Git
  Plug 'airblade/vim-gitgutter' "integra com statusline
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim' " A git commit browser.
  Plug 'rhysd/git-messenger.vim' "It shows the history of commits under the cursor in popup window.
  " Terminal
  " Plug 'voldikss/vim-floaterm'
  " Start Screen
  Plug 'mhinz/vim-startify'
  " Vista View and search LSP symbols, tags in Vim/NeoVim.
  " Plug 'liuchengxu/vista.vim'
  " See what keys do like in emacs
  " Plug 'liuchengxu/vim-which-key'
  " Zen mode disable vim-airline
  " Plug 'junegunn/goyo.vim' " Distraction-free writing in Vim.
  " Snippets
  Plug 'SirVer/ultisnips' "(Usando agora neosnippet.vim)
  " Plug 'Shougo/neosnippet.vim'
  " Plug 'Shougo/neosnippet-snippets'
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'
  Plug 'preservim/tagbar' " Mostra tags em uma janela, ordenadas pelo escopo
  " Interactive code
  " Plug 'metakirby5/codi.vim'
  " Better tabline TODO: requer nvim 0.5
  "Plug 'romgrk/barbar.nvim'
  " undo time travel
  " Plug 'mbbill/undotree'
  " Find and replace
  " Plug 'brooth/far.vim'
  " Auto change html tags
  Plug 'AndrewRadev/tagalong.vim'
  " live server plugin for live html, css, and javascript editing in vim
  " Plug 'turbio/bracey.vim'
  " Smooth scroll
  " Plug 'psliwka/vim-smoothie'
  " " async tasks
  Plug 'skywind3000/asynctasks.vim'
  Plug 'skywind3000/asyncrun.vim'
  " Swap windows
  Plug 'wesQ3/vim-windowswap'
  " Markdown Preview
  " Requer nodejs instalado (exemplo: sudo dnf module install nodejs:12)
  " Plug 'iamcco/markdown-preview.nvim'", { 'do': 'cd app & npm install'  }
  " Easily Create Gists
  Plug 'mattn/vim-gist'
  Plug 'mattn/webapi-vim'
  " Colorizer
  Plug 'morhetz/gruvbox' " Colorscheme
  Plug 'tomasiser/vim-code-dark' " Colorscheme
  " Plug 'crusoexia/vim-monokai' " Colorscheme
  " Plug 'skielbasa/vim-material-monokai' " Colorscheme
  " Plug 'atelierbram/Base2Tone-vim' " Colorscheme
  " Plug 'norcalli/nvim-colorizer.lua'
  " Intuitive buffer closing
  Plug 'moll/vim-bbye'
  " Debugging code in Vim
  " TODO: testar futuramente
  " Plug 'puremourning/vimspector'
  " Maximiza e restaura a janela atual no Vim.
  Plug 'szw/vim-maximizer'
  " Neovim in Browser
  " Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
  " Rainbow brackets
  " Plug 'luochen1990/rainbow'
  " Async Linting Engine
  " TODO make sure to add ale config before plugin
  Plug 'dense-analysis/ale'
  " Better Whitespace
  " Plug 'ntpeters/vim-better-whitespace'
  " Files and Directories Explorer
  Plug 'preservim/nerdtree'
  " Multiple Cursors
  Plug 'terryma/vim-multiple-cursors'
  " ZoomWin: Zooms Window in and out "
  " Plug 'regedarek/ZoomWin'
  " Vim plugin to sort python imports using isort python uttility
  " TODO: testar futuramente
  " Plug 'fisadev/vim-isort'
  " Indentation pep8 conventions
  " TODO: testar futuramente
  " PLug 'Vimjas/vim-python-pep8-indent'
  " Exibe linhas verticais finas em cada nível de recuo para código recuado com espaços.
  Plug 'Yggdroot/indentLine'
  " Latex Use Overleaf
  " Plug 'lervag/vimtex'
  " Cool Icons
  Plug 'ryanoasis/vim-devicons'
  " Plug 'kyazdani42/nvim-web-devicons' "fork Lua de vim-devicons

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
  " Plug 'kaicataldo/material.vim'
  " Plug 'tomasiser/vim-code-dark'
  " Plug 'mg979/vim-xtabline'
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
  " Plug 'preservim/nerdcommenter' "Usando tpope/vim-commentary
  " Plug 'atishay/far.vim'
  " Plug 'romgrk/lib.kom'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
