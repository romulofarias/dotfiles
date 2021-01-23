" Deoplete plugin settings
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

