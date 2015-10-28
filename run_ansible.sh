#!/bin/bash
pushd `dirname $0` >/dev/null

check_uname=`uname -s |awk "{print $1}"`
f_name=
if [ $check_uname == 'Darwin' ]; then
  f_name='brew.yml'
elif [ $check_uname == 'Linux' ]; then
  f_name='package.yml'
else
  echo `uname -s` is not supported
  exit 1
fi

ansible-playbook -i ./hosts ./script/${f_name} -vv

unset check_uname
unset f_name

popd >/dev/null
read -p "enter"
