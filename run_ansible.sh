#!/bin/bash
pushd `dirname $0` >/dev/null

ansible-playbook -i ./hosts ./default.yml -vv -s -K

popd >/dev/null
read -p "enter"
