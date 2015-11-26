#!/bin/bash

# install xcode
function init_xcode() {
  sudo xcodebuild -license
  xcode-select --install
}

# check install
function init_brew() {
  brew doctor
  if [ $? -ne 1 ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
}

function init_ansible() {
  brew upgrade
  brew update
  brew install ansible
}

function init_git() {
  brew install git
  open https://help.github.com/articles/generating-ssh-keys/
}

echo Uncomment necessary processing
#init_xcode && unset init_xcode
#init_brew && unset init_brew
#init_ansible && unset init_ansible
#init_git && unset init_git

#./run_ansible.sh
