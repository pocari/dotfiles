" rustcでコンパイルチェック
" syntasticの設定
" let g:syntastic_rust_checkers = ['cargo']

" augroup my_neomake_rust_cmds
"   autocmd!
"   autocmd BufWritePost *.rs Neomake cargo
" augroup END

" 保存時にrustfmtで自動整形
" 要 cargo install rustfmt
" let g:rustfmt_autosave = 1

" let g:deoplete#sources#rust#racer_binary = '/Users/pocari/.cargo/bin/racer'
" 
" " rustup component add rust-src でいれたstableの場所
" let g:deoplete#sources#rust#rust_source_path = '/Users/pocari/.rustup/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src'

augroup rust_autoformat_by_lsp
  au! * <buffer>
  autocmd BufWritePre <buffer> LspDocumentFormatSync
augroup END

nnoremap <C-]> :<C-u>LspDefinition<CR>
nnoremap K :<C-u>LspHover<CR>
nnoremap <LocalLeader>R :<C-u>LspRename<CR>
nnoremap <LocalLeader>n :<C-u>LspReferences<CR>
