#!/bin/bash




echo " Please provide a valid url for pcap file (smallFlows.pcap default) "

read i

if [ "$i" == "" ] ; then ansible-playbook fourth.yml -i /home/cloud_user/ansible/test.inv --ask-become-pass -e "ur=https://s3.amazonaws.com/tcpreplay-pcap-files/smallFlows.pcap "
else 
 ansible-playbook fourth.yml -i /home/cloud_user/ansible/test.inv --ask-become-pass -e "ur=$i"

fi
