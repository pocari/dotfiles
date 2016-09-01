" 保存時にgolitをかける
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['go'] }
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']

" 保存時にimportを自動補完
let g:go_fmt_command = "goimports"


nnoremap [vimgo] <Nop>
nmap <Leader>v [vimgo]

nnoremap [vimgo]r :<C-u>GoRename<CR>
nnoremap [vimgo]d :<C-u>GoDecls<CR>

