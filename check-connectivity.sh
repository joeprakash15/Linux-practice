#!/bin/bash
#Description: this script will ping the google.com and give if else msg

clear
hosts="gooogle.com"
ping -c4 $hosts &> /dev/null #this will give only OK output
#ping -c4 google.com 
if [ $? -eq 0 ]
then 
echo OK
else 
echo not OK
fi
