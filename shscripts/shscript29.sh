#!/bin/bash
#display filename if the contain pattern and display message than pattern is file or not\
echo "Enter a string to search in file"
read string
grep -ilR "$string"* > output
if [ $? -eq 0 ]
then
	echo "The below files contain the pattern $string"
	cat output
else
	echo "The files doesn't contain the pattern $string"
fi 
