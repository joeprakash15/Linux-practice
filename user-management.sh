#!/bin/bash
#Description: this script will create user account, description, user ID and check user exist

echo
echo please provide a user name?
read u
echo
grep -q $u /etc/passwd
	if [ $? -eq 0 ]
	then
	echo ERROR -- user $u already exist
	echo please choose another username.
	echo
	exit 0
	fi
echo "Please provide user description"
read d
echo
useradd $u -c "$d"
echo $u account has been created.. Thank you.

