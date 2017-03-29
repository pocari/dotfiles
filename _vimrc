augroup MyInit
  autocmd!
augroup END

"let g:python3_host_prog = '/usr/local/bin/python3'
" disable default plugins
if has('vim_starting')
  source ~/dotfiles/_vim/rc/_vimrc.disable_default
endif

" dein
source ~/dotfiles/_vim/rc/_vimrc.dein

" ui setting
source ~/dotfiles/_vim/rc/_vimrc.ui

"basic settings
source ~/dotfiles/_vim/rc/_vimrc.basic

" Unite/Denite
if has('nvim')
"  source ~/dotfiles/_vim/rc/_vimrc.denite
  source ~/dotfiles/_vim/rc/_vimrc.denite.keymap
else
  source ~/dotfiles/_vim/rc/_vimrc.unite
endif

" VimFiler
source ~/dotfiles/_vim/rc/_vimrc.vimfiler

" NeoComplete/Deoplete
source ~/dotfiles/_vim/rc/_vimrc.complete

" " QuickRun
" source ~/dotfiles/_vim/rc/_vimrc.quickrun

"lightline
source ~/dotfiles/_vim/rc/_vimrc.lightline

"Gtags
source ~/dotfiles/_vim/rc/_vimrc.gtags

" "test
" source ~/dotfiles/_vim/rc/_vimrc.test

" "slimv
" source ~/dotfiles/_vim/rc/_vimrc.slimv

"easymotion
source ~/dotfiles/_vim/rc/_vimrc.easymotion

" "ctrp"
" source ~/dotfiles/_vim/rc/_vimrc.ctrlp

"syntastic"
" source ~/dotfiles/_vim/rc/_vimrc.syntastic

" Neomake
source ~/dotfiles/_vim/rc/_vimrc.neomake

if has("win32")
elseif has('mac')
  source ~/dotfiles/_vim/rc/_vimrc.osx
endif

" source ~/dotfiles/_vim/rc/_vimrc.omnisharp

" gina
source ~/dotfiles/_vim/rc/_vimrc.gina
