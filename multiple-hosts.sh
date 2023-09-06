#!/bin/bash
#Description: this script will check multiple hosts from the myhosts file and ping hosts using for loop 

clear
IPLIST="/home/ubuntu/joe/Linux-practice/myhosts"
#here we are using for loop
for ip in $( cat $IPLIST )
do
	ping -c1 $ip &> /dev/null
	if [ $? -eq 0 ]
	then
	echo $ip is OK
	else
	echo $ip ping is failed 
	fi
done
