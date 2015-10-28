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

  ssh_dir=~/.ssh
  if [ ! -d $ssh_dir ]; then
    mkdir $ssh_dir
    pushd $ssh_dir
    ssh-keygen -t rsa -C yakisuzu@gmail.com
    pbcopy < id_rsa.pub
    pop
  fi

  open https://help.github.com/articles/generating-ssh-keys/
}

function init_ansible_repos() {
  git init
  git remote add origin git@github.com:yakisuzu/mac-provisioning.git
  git fetch origin
  git reset origin/master
}

echo Uncomment necessary processing
#init_xcode
#init_brew
#init_ansible
#init_git
#init_ansible_repos

#./run_ansible.sh
