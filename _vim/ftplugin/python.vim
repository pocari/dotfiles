let g:jedi#auto_vim_configuration = 0

"neocompleteと連携させる
autocmd FileType python setlocal omnifunc=jedi#completions

if !has('nvim')
  if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
  endif

  let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'
else
  if !exists('g:deoplete#force_omni_input_patterns')
    let g:deoplete#force_omni_input_patterns = {}
  endif

  let g:deoplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'
endif

