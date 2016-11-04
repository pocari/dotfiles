if exists('b:did_ftplugin_typescript')
  finish
endif
let b:did_ftplugin_typescript = 1

let g:js_indent_typescript = 1

if exists('*TSScompleteFunc') && &omnifunc ==# ''
  setlocal omnifunc=TSScompleteFunc
  let g:deoplete#sources#omni#input_patterns.typescript = '\h\w*\|[^. \t]\.\w*'
endif
