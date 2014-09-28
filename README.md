#Setup

##win32

- clone from github

  ```
  cd %USERPROFILE%
  git clone  git@github.com:pocari/dotfiles.git
  ```
  
- setup links(vim setting only)

  ```
  run_setup.bat
  ```

- Vim NeoBundle setting

  ```
  mkdir %USERPROFILE%\.vim\bundle
  git clone https://github.com/Shougo/neobundle.vim %USERPROFILE%\.vim\bundle\neobundle.vim
  ```
  
## macos, linux
- clone from github
  
  ```
  cd ~/
  git clone git@github.com:pocari/dotfiles.git
  ```
  
- setup links

  ```
  sh setup.sh
  ```
  
- Vim NeoBundle setting

  ```
  mkdir -p ~/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
  ```
  
