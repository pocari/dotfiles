" denite bufferの現在行の色
" hi CursorLine ctermfg=magenta
"let g:neomru#directory_mru_limit = 10000
"let g:neomru#file_mru_limit = 20000
call denite#custom#source('file_mru', 'matchers', ['matcher_cpsm', 'matcher_project_files'])
call denite#custom#source('file_rec', 'matchers', ['matcher_cpsm'])
call denite#custom#source('directory_rec', 'matchers', ['matcher_cpsm'])

if executable('files')
  " https://github.com/mattn/files
  call denite#custom#var('file_rec', 'command', ['files', '-a'])
  call denite#custom#var('directory_rec', 'command', ['files', '-a', '-d'])
endif

call denite#custom#option('default', 'cursor_wrap', v:true)

call denite#custom#alias('source', 'file_rec/git', 'file_rec')
call denite#custom#var('file_rec/git', 'command',
      \ ['git', 'ls-files', '-co', '--exclude-standard'])

if executable('rg')
  " Ripgrep command on grep source
  call denite#custom#var('grep', 'command', ['rg'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'final_opts', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading', '--smart-case'])
endif

" Deniteのデフォルトマッピングが変わってしまったので元に戻す
" https://github.com/Shougo/denite.nvim/commit/cf9a400ce3b1918b4b6570fb97416c5c016976a9
call denite#custom#map('insert', "<C-g>", 'quit')
call denite#custom#map('normal', "<C-g>", 'quit')

call denite#custom#map('insert', "<C-n>", 'move_to_next_line')
call denite#custom#map('insert', "<Down>", 'move_to_next_line')

call denite#custom#map('insert', "<C-p>", 'move_to_prev_line')
call denite#custom#map('insert', "<Up>", 'move_to_prev_line')

call denite#custom#map('insert', "<C-y>", 'do_action:yank')
call denite#custom#map('normal', "y", 'do_action:yank')
