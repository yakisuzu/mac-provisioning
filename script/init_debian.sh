#!/bin/bash

function init_ansible() {
  aptitude install ansible
}
init_ansible && unset init_ansible
