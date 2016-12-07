if exists('b:did_ftplugin_markdown')
  finish
endif
let b:did_ftplugin_markdown = 1

augroup MyInit
  autocmd FileType markdown setlocal omnifunc=
augroup END
