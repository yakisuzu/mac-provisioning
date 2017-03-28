#!/bin/bash

function init_ansible() {
  sudo yum install -y epel-release
  sudo yum install -y ansible
}
init_ansible
