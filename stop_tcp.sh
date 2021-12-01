#!/bin/bash


#ansible-playbook fifth.yml -i /home/cloud_user/ansible/test.inv --ask-become-pass

  echo " Stoping tcpreplay"
  p=$(ssh forescout@172.31.105.158 ps -few | grep foresc | grep tcpreplay |awk 'NR==1 {print $2}')

   ssh forescout@172.31.105.158 sudo kill -15 $p
