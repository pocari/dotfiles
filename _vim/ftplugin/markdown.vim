if exists('b:did_ftplugin_markdown')
  finish
endif
let b:did_ftplugin_markdown = 1

" plasticboy/vim-markdownでlinkが変換されるのをやめる
let g:vim_markdown_conceal = 0

autocmd MyInit FileType markdown setlocal omnifunc=
