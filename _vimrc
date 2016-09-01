" dein
source ~/dotfiles/_vimrc.dein

" ui setting
source ~/dotfiles/_vimrc.ui

"basic settings
source ~/dotfiles/_vimrc.basic

" Unite
source ~/dotfiles/_vimrc.unite

" VimFiler
source ~/dotfiles/_vimrc.vimfiler

" indent
source ~/dotfiles/_vimrc.indent

" NeoComplete
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

"ctrp"
source ~/dotfiles/_vimrc.ctrlp

if has("win32")
elseif has('mac')
  source ~/dotfiles/_vimrc.osx
endif

" source ~/dotfiles/_vimrc.omnisharp
