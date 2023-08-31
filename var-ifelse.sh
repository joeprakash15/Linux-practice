#! /bin/bash
#Description: this script will do basic if else condition
clear

a=`date | awk '{print $1}'`
if [ $a == mon ]
then 
	echo Today is mon
else
	echo Today is not monday
fi
