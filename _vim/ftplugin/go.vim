"
" 保存時にgolitをかける
" syntasticの設定(neomakeに変えたのでコメント)
" let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['go'] }
" let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']

" neomakeの設定
" let g:neomake_go_enabled_makers = ['go', 'golint', 'govet']

" 保存時にimportを自動補完
" let g:go_fmt_command = "goimports"
" 
" let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
" 
" nnoremap [vimgo] <Nop>
" nmap <Leader>v [vimgo]
" 
" nnoremap [vimgo]r :<C-u>GoRename<CR>
" nnoremap [vimgo]d :<C-u>GoDecls<CR>

nnoremap <buffer> <C-]> :<C-u>LspDefinition<CR>
nnoremap K :<C-u>LspHover<CR>
nnoremap <LocalLeader>R :<C-u>LspRename<CR>
nnoremap <LocalLeader>n :<C-u>LspReferences<CR>

augroup mode_go
  autocmd!
  autocmd bufWritePost *.go :LspDocumentFormat
augroup END

