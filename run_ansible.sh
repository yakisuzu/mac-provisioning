#!/bin/sh
ansible-playbook -i hosts brew.yml -vv | tee brew.log
