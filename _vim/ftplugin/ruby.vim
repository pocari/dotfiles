function! HelloWorld()
  echo "hello, world"
endfunction

autocmd BufWinEnter,BufNewFile *_spec.rb set filetype=ruby.rspec
let g:quickrun_config['ruby.rspec'] = {
	\ 'command': 'rspec',
	\ 'cmdopt': '--no-color --format progress -I .',
	\ 'exec': ['bundle exec %c %o %s %a'],
	\ 'filetype': 'rspec-result',
	\ }

function! RSpecQuickrun()
  let b:quickrun_config = {'type' : 'rspec/bundle'}
endfunction

autocmd BufReadPost *_spec.rb call RSpecQuickrun()
