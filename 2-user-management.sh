#!/bin/bash
#Description: this script will create user account, description, user ID and check user exist

echo
echo "Please provide user name"	
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
echo "Do you want specify user ID (y/n)"
read response
echo
        if [ $response == y ]; then
        echo "please enter user ID?"
        read uid
	grep -q $uid /etc/passwd
		if [ $? -eq 0 ]; then
		echo ERROR -- userID $uid already exist
		echo
		exit 0
		else
		useradd $u -c "$d" -u $uid

		echo
		echo $u account has been created.. Thank you.
		fi

	elif [ $response == n ]; then
	echo No worries we will assign a UID for you..
	useradd $u -c "$d"
	echo
	echo $u account has been created.. Thank you.
	fi
