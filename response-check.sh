#! /bin/bash
#Description: this script will do basic if else condition
clear

echo 
echo "what is your name?"
echo 
read a 
echo
echo Hello $a 
echo 
echo "Do you like working in IT? (y/n)"
read like
if [ "$like" == y ]
	then
	echo you are cool
	elif [ "$like" == n ]
	then
	echo "you should try IT, it's a good friend"
fi

