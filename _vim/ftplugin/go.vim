" 保存時にgolitをかける
" syntasticの設定(neomakeに変えたのでコメント)
" let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['go'] }
" let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']

" neomakeの設定
let g:neomake_go_enabled_makers = ['go', 'golint', 'govet', 'errcheck']

" 保存時にimportを自動補完
let g:go_fmt_command = "goimports"


nnoremap [vimgo] <Nop>
nmap <Leader>v [vimgo]

nnoremap [vimgo]r :<C-u>GoRename<CR>
nnoremap [vimgo]d :<C-u>GoDecls<CR>

