@echo off

mklink %USERPROFILE%\.vimrc %USERPROFILE%\dotfiles\_vimrc
mklink /D %USERPROFILE%\.vim %USERPROFILE%\dotfiles\_vim
