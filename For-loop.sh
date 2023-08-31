#! /bin/bash
#Description: this is basic for loop shell script

clear
for i in {1..3}
do 
	touch $i
done
echo
echo "1st for loop"
i=1
for day in mon tue wed thu fri
do
	echo "weekday $((i++)):$day"
done
echo 
echo "2nd for loop"
echo
i=1
for username in $(awk -F: '{print $1}' /etc/passwd | head -5)
do
    echo "username $i: $username"
    ((i++))
done

