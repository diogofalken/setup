#!/bin/sh

cyan=`tput setaf 6`
reset=`tput sgr0`

install_xcode() {
  echo "${cyan}Installing Xcode${reset}"
  xcode-select --install
}

install_brew() {
  echo "${cyan}Installing/Update Brew${reset}"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  brew update
  brew install iterm2

  # Install font
  brew tap homebrew/cask-fonts
  brew install --cask font-jetbrains-mono

  # Create work directory
  mkdir ~/dev
}

install_xcode
install_brew
