" Rainbow plugin settings
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
