#!/bin/sh
ansible-playbook -i hosts brew.yml -vv > brew.log
