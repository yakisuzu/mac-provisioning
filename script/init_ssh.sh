#!/bin/bash

function init_ssh() {
  ssh_dir=~/.ssh
  if [ ! -d $ssh_dir ]; then
    mkdir $ssh_dir
    pushd $ssh_dir
    echo -----------------
    echo create ssh-keygen
    ssh-keygen -t rsa -C yakisuzu@gmail.com
    pop
  fi
}
init_ssh
