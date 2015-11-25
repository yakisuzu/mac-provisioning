#!/bin/bash
pushd `dirname $0` >/dev/null

if [ ! -d `pwd`/provisioning-ansible ]; then
  wget https://github.com/yakisuzu/provisioning-ansible/archive/master.zip
  unzip master.zip
  rm -f master.zip
  mv provisioning-ansible-master provisioning-ansible
else
  echo exists provisioning-ansible dir
fi

popd >/dev/null
read -p "enter"
