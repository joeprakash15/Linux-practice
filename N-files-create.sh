#!/bin/bash
#Description: this will ask user how many file and name of file need to create and using for loop to create with sequenly
echo
echo please enter how many file do you want?
read t
echo
echo please enter the start name of the files
read n
echo 
for i in $(seq 1 $t)
do
	touch $n.$i
done
