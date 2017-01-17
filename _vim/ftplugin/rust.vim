" rustcでコンパイルチェック
let g:syntastic_rust_checkers = ['cargo']

" 保存時にrustfmtで自動整形
" 要 cargo install rustfmt
let g:rustfmt_autosave = 1

let g:deoplete#sources#rust#racer_binary = '/Users/pocari/.cargo/bin/racer'

" rustup component add rust-src でいれたstableの場所
let g:deoplete#sources#rust#rust_source_path = '/Users/pocari/.rustup/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src'

