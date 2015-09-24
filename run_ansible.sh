#!/bin/sh
pushd `dirname $0` >/dev/null

ansible-playbook -i hosts brew.yml -vv

popd >/dev/null
read -p "enter"
