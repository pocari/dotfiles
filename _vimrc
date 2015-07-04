" Neo Bundle
source ~/dotfiles/_vimrc.bundle

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

if has("win32")

elseif has('mac')
  source ~/dotfiles/_vimrc.osx
endif

source ~/dotfiles/_vimrc.omnisharp_neocomplete
