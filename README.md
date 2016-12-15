#Setup

##win32

- clone from github

  ```
  cd %USERPROFILE%
  git clone  git@github.com:pocari/dotfiles.git
  git submodule update -i
  ```
  
- setup links(vim setting only)

  ```
  run_setup.bat
  ```

## macos, linux
- clone from github
  
  ```
  cd ~/
  git clone git@github.com:pocari/dotfiles.git
  git submodule update -i
  ```
  
- setup links

  ```
  sh setup.sh
  ```

- update submodules

  ```
  git submodule foreach git pull origin master
  ```

## optional

- completion files from Docker for Mac directory

  ```
  ln -s /Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion ~/dotfiles/_zsh/addhoc-completions/_docker
  ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion ~/dotfiles/_zsh/addhoc-completions/_docker-compose
  ```
