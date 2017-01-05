" rustcでコンパイルチェック
let g:syntastic_rust_checkers = ['rustc']

" 保存時にrustfmtで自動整形
" 要 cargo install rustfmt
let g:rustfmt_autosave = 1

let g:deoplete#sources#rust#racer_binary = '/Users/pocari/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path = '/Users/pocari/dev/office/github.com/rust-lang/rust/src'

