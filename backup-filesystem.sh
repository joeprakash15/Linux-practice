#!/bin/bash
#Description: this script will backup system file like /var and /etc using tar command and using gzip command to commpress 

clear
tar cvf /home/ubuntu/joe/Linux-practice/backup.tar /etc /var
gzip /home/ubuntu/joe/Linux-practice/backup.tar 
find backup.tar.gz -mtime -1 -type f -print &> /dev/null
if [ $? -eq 0 ]
	then
	echo backup was created
	echo Archieve backup
	mv  /home/ubuntu/joe/Linux-practice/backup.tar.gz  /home/ubuntu/joe/backup.tar.gz
	else 
	echo backup failed
fi


