#!/bin/sh

cyan=`tput setaf 6`
reset=`tput sgr0`

install_vscode() {
  echo "${cyan}Installing VSCode${reset}"
  brew install visual-studio-code
}

install_extensions() {
  echo "${cyan}Installing Extensions${reset}"
  while read line; do code --install-extension "$line";done < ./data/vscode-extensions.txt
}

install_vscode
install_extensions
