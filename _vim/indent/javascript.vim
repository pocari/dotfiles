:setlocal expandtab "タブ入力を複数の空白入力に置き換える
:setlocal tabstop=2 "画面上でタブ文字が占める幅
:setlocal shiftwidth=2 "自動インデントでずれる幅
:setlocal softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
:setlocal autoindent "改行時に前の行のインデントを継続する
:setlocal smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する

" vim-js-indentでインデントするために、typescript-vimのインデント機能をオフる
let g:typescript_indent_disable = 1
