"let g:python3_host_prog = '/usr/local/bin/python3'
" disable default plugins
source ~/dotfiles/_vimrc.disable_default

" dein
source ~/dotfiles/_vimrc.dein

" ui setting
source ~/dotfiles/_vimrc.ui

"basic settings
source ~/dotfiles/_vimrc.basic

" Unite/Denite
if has('nvim')
  source ~/dotfiles/_vimrc.denite
else
  source ~/dotfiles/_vimrc.unite
endif

" VimFiler
source ~/dotfiles/_vimrc.vimfiler

" indent
source ~/dotfiles/_vimrc.indent

" NeoComplete/Deoplete
source ~/dotfiles/_vimrc.complete

" QuickRun
source ~/dotfiles/_vimrc.quickrun

"lightline
source ~/dotfiles/_vimrc.lightline

"Gtags
source ~/dotfiles/_vimrc.gtags

"test
source ~/dotfiles/_vimrc.test

"slimv
source ~/dotfiles/_vimrc.slimv

"easymotion
source ~/dotfiles/_vimrc.easymotion

" "ctrp"
" source ~/dotfiles/_vimrc.ctrlp

"syntastic"
source ~/dotfiles/_vimrc.syntastic
if has("win32")
elseif has('mac')
  source ~/dotfiles/_vimrc.osx
endif

" source ~/dotfiles/_vimrc.omnisharp
