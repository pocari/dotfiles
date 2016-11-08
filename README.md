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

