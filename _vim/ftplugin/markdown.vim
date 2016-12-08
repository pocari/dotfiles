if exists('b:did_ftplugin_markdown')
  finish
endif
let b:did_ftplugin_markdown = 1

autocmd MyInit FileType markdown setlocal omnifunc=
