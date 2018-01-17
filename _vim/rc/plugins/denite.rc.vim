" このファイルはDeinによってDeniteロード時に読み込まれるので注意

" denite bufferの現在行の色
" hi CursorLine ctermfg=magenta
"let g:neomru#directory_mru_limit = 10000
"let g:neomru#file_mru_limit = 20000
call denite#custom#source('file_mru', 'matchers', ['matcher_cpsm', 'matcher_project_files'])
call denite#custom#source('file_old', 'matchers', ['matcher_cpsm', 'matcher_project_files'])
call denite#custom#source('file_rec', 'matchers', ['matcher_cpsm'])
call denite#custom#source('directory_rec', 'matchers', ['matcher_cpsm'])

" file_recはag, directory_recの代わりにdirectory_oldを使うようにしたので一旦コメント
" if executable('files')
"   " https://github.com/mattn/files
"   call denite#custom#var('file_rec', 'command', ['files', '-a'])
"   call denite#custom#var('directory_rec', 'command', ['files', '-a', '-d'])
" endif

if executable('ag')
  " ファイル一覧はagの方が速いらしいのでagにする
	call denite#custom#var('file_rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
end

" -xだけだと、名称のアルファベット順になるので, --sort=noでファイル上での出現順に変更する
call denite#custom#var('outline', 'options', ['-x', '--sort=no'])

call denite#custom#option('default', 'cursor_wrap', v:true)
if exists('g:loaded_lightline')
  " lightline.vim側で描画するのでdeniteでstatuslineを描画しないようにする
  call denite#custom#option('default', 'statusline', v:false)
endif

call denite#custom#alias('source', 'file_rec/git', 'file_rec')
call denite#custom#var('file_rec/git', 'command', ['git', 'ls-files', '-co', '--exclude-standard'])

" if executable('rg')
"   " Ripgrep command on grep source
"   " rg コマンドで検索するが、 minify したjsなど１行が極端に長いファイルがマッ
"   " チするとpythonがハングしてしまうので１行最大2000文字になるように検索結果の
"   " 行をカットするrg_with_cutコマンドでwrapして検索する
"   call denite#custom#var('grep', 'command', ['rg_with_cut'])
"   call denite#custom#var('grep', 'recursive_opts', [])
"   call denite#custom#var('grep', 'final_opts', [])
"   call denite#custom#var('grep', 'separator', ['--'])
"   call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading', '--smart-case'])
" endif

" grepの結果のファイル名でも絞りこめるようにする
call denite#custom#source('grep', 'converters', ['converter_abbr_word'])
if executable('ag')
  " Ag command on grep source
  call denite#custom#var('grep', 'command', ['ag_with_cut'])
  call denite#custom#var('grep', 'default_opts',
        \ ['-i', '--vimgrep'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])
endif
call denite#custom#var('command_history', 'ignore_command_regexp', ['^q', '^w'])

" Deniteのデフォルトマッピングが変わってしまったので元に戻す
" https://github.com/Shougo/denite.nvim/commit/cf9a400ce3b1918b4b6570fb97416c5c016976a9
call denite#custom#map('insert', "<C-g>", '<denite:quit>')
call denite#custom#map('normal', "<C-g>", '<denite:quit>')

call denite#custom#map('insert', "<C-n>",  '<denite:move_to_next_line>')
call denite#custom#map('insert', "<Down>", '<denite:move_to_next_line>')

call denite#custom#map('insert', "<C-p>", '<denite:move_to_previous_line>')
call denite#custom#map('insert', "<C-d>", '<denite:print_messages>')
call denite#custom#map('insert', "<Up>",  '<denite:move_to_previous_line>')

call denite#custom#map('insert', "<C-y>", '<denite:do_action:yank>')
call denite#custom#map('normal', "y",     '<denite:do_action:yank>')

" neovim-prompt emacs like binding
call denite#custom#map('insert', "<C-a>",     '<prompt:move_caret_to_head>')
call denite#custom#map('insert', "<C-e>",     '<prompt:move_caret_to_tail>')
call denite#custom#map('insert', "<C-b>",     '<prompt:move_caret_to_left>')
call denite#custom#map('insert', "<C-f>",     '<prompt:move_caret_to_right>')
call denite#custom#map('insert', "<C-k>",     '<prompt:delete_text_after_caret>')

