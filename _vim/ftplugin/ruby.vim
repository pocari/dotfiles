" autocmd BufWinEnter,BufNewFile *_spec.rb set filetype=ruby.rspec
" 
" " 'cmdopt': '--no-color --format progress -I .',
" let g:quickrun_config['ruby.rspec'] = {
" 	\ 'command': 'rspec',
" 	\ 'exec': ['bundle exec %c %o %s %a'],
" 	\ 'cmdopt': '--no-color --format documentation',
" 	\ 'filetype': 'rspec-result',
" 	\ }
" 
" function! RSpecQuickrun()
"   " let b:quickrun_config = {'type' : 'rspec/bundle'}
" endfunction
" 
" autocmd BufReadPost *_spec.rb call RSpecQuickrun()
setlocal re=1 " ft=rubyのときに遅くなるのを解消。ちょっとだけマシになる。正規表現エンジンを変えるらしい

nnoremap <C-]> :<C-u>LspDefinition<CR>
nnoremap K :<C-u>LspHover<CR>
nnoremap <LocalLeader>R :<C-u>LspRename<CR>
nnoremap <LocalLeader>n :<C-u>LspReferences<CR>
