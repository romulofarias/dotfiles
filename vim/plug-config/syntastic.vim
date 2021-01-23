" Configuracao do syntastic
" syntastic plugin settings
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

