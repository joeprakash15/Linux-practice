#!/bin/bash

ls -ltr /home/ubuntu/joe/Linux-practice/
if [ $? -eq 0 ]
then
echo file exist
else
echo file does not exist
fi

