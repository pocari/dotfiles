let g:quickrun_config['ruby.bundle'] = { 'command': 'ruby', 'cmdopt': 'bundle exec', 'exec': '%o %c %s' }

function! HelloWorld()
  echo "hello, world"
endfunction
