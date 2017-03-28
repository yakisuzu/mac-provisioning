#!/bin/bash
pushd `dirname $0` >/dev/null

# load ssh
./script/init_ssh.sh

check_uname=`uname -s | awk '{print $1}'`
if [ $check_uname = 'Darwin' ]; then
  ./script/init_mac.sh
elif [ $check_uname = 'Linux' ]; then
  check_os=`cat /etc/redhat-release | awk '{print $1}'`
  if [ -e /etc/redhat-release ] && [ $check_os = 'CentOS' ]; then
    ./script/init_centos.sh
  else
    ./script/init_debian.sh
  fi
else
  echo `uname -s` is not supported
fi

popd >/dev/null

