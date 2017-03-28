#!/bin/bash
pushd `dirname $0` >/dev/null

if [ ! -d `pwd`/provisioning-ansible ]; then
  curl -JO https://codeload.github.com/yakisuzu/provisioning-ansible/zip/master
  unzip provisioning-ansible-master.zip && rm -f provisioning-ansible-master.zip
  mv provisioning-ansible-master provisioning-ansible
else
  echo exists provisioning-ansible dir
fi

popd >/dev/null

