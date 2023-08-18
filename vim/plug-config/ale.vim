" Ale plugin settings
let g:ale_disable_lsp = 1 " ALE and coc.nvim together
let g:ale_completion_enabled = 0
let g:ale_fix_on_save = 1
let g:ale_linters ={
	\ 'python':['flake8', 'pyright', 'bandit'],
	\ 'javascript': ['eslint'],
	\ 'html': ['tidy'],
    \ 'c': [],
    \ 'cpp': [],
    \ 'sh' : ['language_server'],
	\}
let g:ale_fixers = {
\   'python': ['isort','black'],
\   'c': ['clang-format'],
\   'cpp':['clang-format'],
\    '*': ['trim_whitespace'],
\}
let g:ale_sign_error =  '>>'
let g:ale_sign_warning = '--'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight link ALEErrorSign WarningMsg
highlight link ALEWarningSign ModeMsg
" Disable whitespace warnings
let g:ale_warn_about_trailing_whitespace = 0
" Python com ALE e flake8
let g:ale_python_flake8_options = '--max-line-length=100 --extend-ignore=E203'

" Python ALE Black formatador de código
let g:ale_python_black_options = '--line-length 100'

" Python ALE e isort
let g:ale_python_isort_options = '--profile black -l 100'
