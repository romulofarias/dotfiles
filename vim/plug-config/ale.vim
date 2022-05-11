" Ale plugin settings
let g:ale_disable_lsp = 1 " ALE and coc.nvim together
let g:ale_completion_enabled = 0
let g:ale_fix_on_save = 1
let g:ale_linters ={
	\ 'python':['flake8', 'pylint'],
	\ 'javascript': ['eslint'],
    \ 'c': [],
    \ 'cpp': [],
    \ 'sh' : ['language_server'],
	\}
let g:ale_fixers = {
\   'python': [
\       'isort',
\       'yapf',
\       'remove_trailing_lines',
\       'trim_whitespace'
\   ],
\   'c': ['clang-format'],
\   'cpp':['clang-format'],
\}
let g:ale_sign_error = '✗'
let g:ale_sign_warning = 'Δ'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight link ALEErrorSign WarningMsg
highlight link ALEWarningSign ModeMsg

