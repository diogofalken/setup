#!/bin/zsh

cyan=`tput setaf 6`
reset=`tput sgr0`

install_jenv() {
  echo "${cyan}Install JENV${reset}"
  brew install jenv
  
  # Update Path
  echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
  echo 'eval "$(jenv init -)"' >> ~/.zshrc
  source ~/.zshrc

  # Java 8 and 11 versions
  brew install temurin8
  brew install temurin11

  # Add version 8 and 11 to jenv
  jenv add /Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home/
  jenv enable-plugin export
  jenv add /Library/Java/JavaVirtualMachines/temurin-11.jdk/Contents/Home/
  
  # Enable maven
  jenv enable-plugin maven

  # Set version 11 as global
  jenv global openjdk64-11.0.14.1
}

install_nvm() {
  echo "${cyan}Installing NVM${reset}"
  brew install nvm
  mkdir ~/.nvm
  source ~/.zshrc

  echo 'export NVM_DIR=~/.nvm"' >> ~/.zshrc
  echo 'source "$(brew --prefix nvm)/nvm.sh"' >> ~/.zshrc
  source ~/.zshrc

  nvm install --lts
}

install_brew_apps() {
  echo "${cyan}Installing Brew Apps${reset}"
  brew install git
  install_nvm
  install_jenv
  brew install yarn
  brew install deno

  brew install alfred
  brew install clipy
  brew install robo-3t
  brew install spectacle
  brew install spotify
  brew install brave-browser
  brew install discord
  brew install homebrew/cask-drivers/logitech-options
  brew install fig
  brew install homebrew/cask/onedrive
}

install_brew_apps
