" 保存時にgolitをかける
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['go'] }
let g:syntastic_go_checkers = ['go', 'golint']

" 保存時にimportを自動補完
" let g:go_fmt_command = "goimports"
