:setlocal expandtab "タブ入力を複数の空白入力に置き換える
:setlocal tabstop=2 "画面上でタブ文字が占める幅
:setlocal shiftwidth=2 "自動インデントでずれる幅
:setlocal softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
:setlocal autoindent "改行時に前の行のインデントを継続する
:setlocal smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する

" 関数定義、呼び出し時の引数のインデントがなぜか2shiftwidth(=2*2=4)なので
" 1shiftwidthに変更する
" 単純にsetlocalしても なぜかplugin側の設定が後から設定されるみたいなので、
" eventで登録する
autocmd FileType dart setlocal cinoptions+=(s,us
