#!/bin/bash

function init_ansible_repos() {
  if [ ! -d `pwd`/.git ]; then
    git init
    git remote add origin git@github.com:yakisuzu/mac-provisioning.git
    git fetch origin
    git reset origin/master
  fi
}
init_ansible_repos && unset init_ansible_repos
