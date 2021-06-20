" ftplugin/go.vim
" @author Elliot Penson

let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:g_highlight_trailing_whitespace_error = 1

" Show type in status line.
let g:go_auto_type_info = 1

" Run gofmt and goimports on save.
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

