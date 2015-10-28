#!/bin/bash
pushd `dirname $0` >/dev/null

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
