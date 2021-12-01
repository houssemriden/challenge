#!/bin/bash


#ansible-playbook fifth.yml -i /home/cloud_user/ansible/test.inv --ask-become-pass

echo " tcpreplay is looping indefinitely ..."


ssh forescout@172.31.105.158 sudo tcpdump -i replay -w capture.pcap  2> /dev/null & 
