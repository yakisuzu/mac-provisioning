#!/bin/sh

# install xcode
function init_xcode() {
  sudo xcodebuild -license
  xcode-select --install
}

# check install
function init_brew() {
  brew
  if [ $? -eq 127 ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew doctor
  fi

  brew upgrade
  brew update
  brew install ansible
  brew install git
}

function init_repos() {
  #git init
  #git remote add origin git@github.com:yakisuzu/mac-provisioning.git
}

#init_xcode
#init_brew

#sh ./run_ansible.sh

