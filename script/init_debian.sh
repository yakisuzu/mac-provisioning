#!/bin/bash

function init_ansible() {
  sudo aptitude install ansible
}
init_ansible && unset init_ansible
