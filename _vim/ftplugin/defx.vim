nnoremap <silent><buffer><expr> ~ defx#async_action('cd')
nnoremap <silent><buffer><expr> h defx#async_action('cd', ['..'])
nnoremap <silent><buffer><expr> j line('.') == line('$') ? 'gg' : 'j'
nnoremap <silent><buffer><expr> k line('.') == 1 ? 'G' : 'k'
nnoremap <silent><buffer><expr> l defx#async_action('open')

nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
"nnoremap <silent><buffer><expr> <CR> defx#do_action('open')
nnoremap <silent><buffer><expr> <CR> defx#do_action('open', 'wincmd w \| drop')
nnoremap <silent><buffer><expr> q defx#do_action('quit')

nnoremap <silent><buffer><expr> t defx#async_action('open_or_close_tree')
nnoremap <silent><buffer><expr> T defx#async_action('open_tree_recursive')

nnoremap <silent><buffer><expr> ! defx#do_action('execute_command')
nnoremap <silent><buffer><expr> <C-g> defx#do_action('print')
nnoremap <silent><buffer><expr> <C-l> defx#do_action('redraw')
nnoremap <silent><buffer><expr> E defx#do_action('open', 'vsplit')
nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
nnoremap <silent><buffer><expr> N defx#do_action('new_file')
nnoremap <silent><buffer><expr> c defx#do_action('copy')
nnoremap <silent><buffer><expr> d defx#do_action('remove_trash')
nnoremap <silent><buffer><expr> m defx#do_action('move')
nnoremap <silent><buffer><expr> r defx#do_action('rename')
nnoremap <silent><buffer><expr> x defx#do_action('execute_system')
nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')
nnoremap <silent><buffer><expr> p defx#do_action('paste')
nnoremap <silent><buffer><expr> d defx#do_action('remove', "true")
nnoremap <silent><buffer><expr> <Leader>z defx#do_action('quit')
