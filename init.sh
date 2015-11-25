#!/bin/bash
pushd `dirname $0` >/dev/null

function init_git() {
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
init_git && unset init_git

check_uname=`uname -s |awk "{print $1}"`
if [ $check_uname == 'Darwin' ]; then
  ./script/init_mac.sh
elif [ $check_uname == 'Linux' ]; then
  ./script/init_linux.sh
else
  echo `uname -s` is not supported
fi
unset check_uname

popd >/dev/null
read -p "enter"
