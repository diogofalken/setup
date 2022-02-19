#!/bin/sh

cyan=`tput setaf 6`
reset=`tput sgr0`

install_theme() {
  echo "${cyan}Installing Spaceship Theme${reset}"
  git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
  ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
}

install_custom_plugins() {
  echo "${cyan}Installing Custom Zinit and ZSH plugins${reset}"
  git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k
  sh -c "$(curl -fsSL https://git.io/zinit-install)"
  source ~/.zshrc
}

install_ohmyzsh() {
  echo "${cyan}Installing Oh My ZSH${reset}"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_ohmyzsh
install_theme
install_custom_plugins
